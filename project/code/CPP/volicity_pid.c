#include "volicity_pid.h"
#include "Ourcode_headfile.h"/*
 * volicity_pid.c
 *
 *  Created on: 2024Äê10ÔÂ5ÈÕ
 *      Author: Zh319
 */

//struct valuepid{
//    float p;
//    float i;
//    float d;
//    float error;
//    float error_last;
//    float error_pre;
//    float volicity_out;
//};
struct valuepid pidL;
struct valuepid pidR;
void PIDL_init()
{
    pidL.p = 1;
    pidL.i = 0.5;
    pidL.d = 0.1;
    pidL.error = 0;
    pidL.error_last = 0;
    pidL.error_pre = 0;
    pidL.volicity_out = 0;
}

void PIDR_init()
{
    pidR.p = 100;
    pidR.i = 5;
    pidR.d = 1;
    pidR.error = 0;
    pidR.error_last = 0;
    pidR.error_pre = 0;
    pidR.volicity_out = 0;
}

float volicity_Lget(struct valuepid L,float expect_speed)
{
    float incrementSpeed;
//    switch (road_state) {
//        case ROAD_STRAIGHT:expect_speed = STRAITSPEED;
//            break;
//        case ROAD_CURVE_L:expect_speed = CURVESPEED1;
//            break;
//        case ROAD_CURVE_R:expect_speed = CURVESPEED2;
//            break;
//        case ROAD_CORSSROAD:expect_speed = CROSSSPEED;
//            break;
//        default:
//            break;
//    }
    L.volicity_out = encoder_get(ENCODER_LEFT);
    L.error = expect_speed -L.volicity_out;
    incrementSpeed = L.p*(L.error-L.error_last)+L.i*L.error+L.d*(L.error-2*L.error_last+L.error_pre);
    L.volicity_out+=incrementSpeed;
    L.error_pre = L.error_last;
    L.error_last = L.error;
    return L.volicity_out;
}

float volicity_Rget(struct valuepid R,float expect_speed)
{
    float incrementSpeed;
//    switch (road_state) {
//        case ROAD_STRAIGHT:expect_speed = STRAITSPEED;
//            break;
//        case ROAD_CURVE_L:expect_speed = CURVESPEED2;
//            break;
//        case ROAD_CURVE_R:expect_speed = CURVESPEED1;
//            break;
//        case ROAD_CORSSROAD:expect_speed = CROSSSPEED;
//            break;
//        default:
//            break;
//    }
    R.volicity_out = encoder_get(ENCODER_RIGH);
    R.error = expect_speed -R.volicity_out;
    incrementSpeed = R.p*(R.error-R.error_last)+R.i*R.error+R.d*(R.error-2*R.error_last+R.error_pre);
    R.volicity_out+=incrementSpeed;
    R.error_pre = R.error_last;
    R.error_last = R.error;
    return R.volicity_out;
}
