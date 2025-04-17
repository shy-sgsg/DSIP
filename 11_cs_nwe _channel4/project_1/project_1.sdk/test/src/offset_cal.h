#ifndef CMP_OFFSET_CAL_H_
#define CMP_OFFSET_CAL_H_
u16 comparator_P (float input);
u16 comparator_N (float input);
void offset_cal(int addr,
				float Vth1_1_offset, float Vth1_2_offset, float Vth1_3_offset ,float Vth1_4_offset ,float Vth1_5_offset, float Vth1_6_offset,
				float Vth2_1_offset, float Vth2_2_offset, float Vth2_3_offset ,float Vth2_4_offset ,float Vth2_5_offset, float Vth2_6_offset,
				float Vth3_1_offset, float Vth3_2_offset, float Vth3_3_offset ,float Vth3_4_offset ,float Vth3_5_offset, float Vth3_6_offset,
				int channel);
#endif