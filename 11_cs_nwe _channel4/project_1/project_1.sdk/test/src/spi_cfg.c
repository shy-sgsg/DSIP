#include "IC_define.h"
//==============================================================================
// Function : spi_Initialize (*mySpi)
//
// Description : This function initialize the SPI device, configur to Master mode
//
// Inputs:
//           - mySpi: a pointer to the XSpi instance to be worked on.
//
// Returns:
//           - XST_SUCCESS: success
//           - XST_FAILURE: fail
//
//==============================================================================
int spi_Initialize (XSpi *mySpi , int DEVICE_ID)
{
	int Status;

	if (mySpi == NULL) {
		return XST_FAILURE;
	}

	//--------------------------------------------
	Status = XSpi_Initialize(mySpi,DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Reset the SPI device to leave it in a known good state.
	 */
	XSpi_Reset(mySpi);

	// Set the SPI device options for Master Mode and manual slave select
	Status = XSpi_SetOptions(mySpi, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/*
	 * Start the SPI driver so that interrupts and the device are enabled.
	 */
	Status = XSpi_Start(mySpi);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/*
	* Disable Global interrupt to use polled mode operation
	*/
	XSpi_IntrGlobalDisable(mySpi);

	/*
	 * Check if SPI has started.
	 */
	 if (mySpi->IsStarted != XIL_COMPONENT_IS_STARTED) {
		 return XST_FAILURE;
	 }

	/*
	 * Select the Serial Flash as a slave.
	 */
	Status = XSpi_SetSlaveSelect(mySpi, 0x1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//--------------------------------------------

	return Status;
}

//==============================================================================
// Function : spi_transfer (*mySpi, *send, *recv, num_bytes)
//
// Description : This function provides the hook into the SPI DRIVER transfer function.
// Inputs:  mySpi     - pointer to SPI instance
//          *send     - pointer to 8-bit values to send
//          *recv     - pointer to 8-bit values to be received
//          num_bytes - the number of bytes to be transferred
//
//==============================================================================
int spi_transfer (XSpi *mySpi, unsigned char *send, unsigned char *recv, u32 num_bytes)
{
	int Status;

    // If no data was designated then return an error.
    if (num_bytes == 0)
    {
    	return XST_FAILURE;
    }
    if (mySpi == NULL)
	{
    	return XST_FAILURE;
	}
    if (send == NULL)
	{
    	return XST_FAILURE;
	}
//    if (recv == NULL)
//    {
//    	return XST_FAILURE;
//    }

    Status = XSpi_Transfer(mySpi, send, recv, num_bytes);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return Status;
}
