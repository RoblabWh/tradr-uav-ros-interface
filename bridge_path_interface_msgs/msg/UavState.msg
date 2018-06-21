uint8   MAINSTATE_INIT                          = 0
uint8   MAINSTATE_WAIT_FOR_REQUEST              = 1
uint8   MAINSTATE_REGISTERED                    = 2

uint8   STATUSSTATE_INIT                        = 0
uint8   STATUSSTATE_UAV_MONITORING              = 1

uint8   STREAMSTATE_INIT                        = 0
uint8   STREAMSTATE_RECEIVING_VIDEO_DATA_OFF    = 1
uint8   STREAMSTATE_WAIT_FOR_RESPONSE           = 2
uint8   STREAMSTATE_RECEIVING_VIDEO_DATA_ON     = 3

uint8   TASKSTATE_INIT                          = 0
uint8   TASKSTATE_WAIT_FOR_TASK                 = 1
uint8   TASKSTATE_WAIT_FOR_RESPONSE             = 2
uint8   TASKSTATE_EXECUTION                     = 3

uint8   mainState
uint8   statusState
uint8   streamState
uint8   taskState
