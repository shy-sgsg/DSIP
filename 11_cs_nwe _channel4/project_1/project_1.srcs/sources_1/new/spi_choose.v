module SPI_choose
(vio_en,
sclk_sdk,
csn_sdk,
sdi_sdk,
sclk_spi,
csn_spi,
sdi_spi,
sdi,
sclk,
csn
);
input vio_en;
input sclk_sdk;
input sdi_sdk;
input csn_sdk;
input sdi_spi;
input sclk_spi;
input csn_spi;
output sdi;
output sclk;
output csn;

assign sclk=(vio_en)?sclk_spi:sclk_sdk;
assign sdi=(vio_en)?sdi_spi:sdi_sdk;
assign csn=(vio_en)?csn_spi:csn_sdk;
endmodule