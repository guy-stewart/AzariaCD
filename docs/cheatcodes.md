# Cheat codes, AKA wink commands.
Cheat codes can be entered in the teletype window  
use the arrow keys to retrieve previos commands  
use ctrl-c to copy the current line (no selection required)  
use ctrl-v to past at the cursor  
All cheat codes are preceded by a ';'  

Frquently used codes are:  
;[where](#where) - return the \<_view_name_\> of the current view.  
;[\<_view_name_\>](#viewname) - navigate to a view.  
;[trace](#trace) - monitor progress of one or more state machines.  

In alpha order:

### DPOS (see [POS](#POS))
Returns change in cursor position from the most recent POS command.

### DUMP
Dumps the contents of all instrinsic tables in the database. The tables are dumped in sqlite3 compatible script files that can be used to recover the database.

### FACING
Displays the compass orientation of the current panorama view.

### FIND [player name]
Transports you to the location of the given player.

### FINGER [optional state machine]
Display the state diagram for a given state machine, or the state machine under the mouse cursor.

### FOLLOW [player name]
Follow (stalk) a given player as they move through the game. To stop following type ';follow' with no player name.

### FONT [font name]
Changes the teletype font. For Azaria the valid fonts are:  
[tnr | parent | village | city | big | small]

### GRAPH
Create state diagrams for all state machines in the current game. The state diagrams are dumped to your user directory in ~/AzariaDB/graphs

### GET [object name]
Get an object by name.

### GOT
Report on the object currently held by the cursor. You should be holding an object.

### ISA \<_object_\>
Given a full object name such as 'IDD_BAIT0', the ISA command return the classes associated with that object. For example, `;isa POLE1B0` displays  `ISA(ISA_BAITED_POL, IDD_POLE1B0)`

### LOOK

### HELP

### MON

### NEW

### POS

### RESET

### RIG

### RUN \<_script_\>
Runs the given test or system script. The script must be located in either the `AzariaCD/data/scripts` or `AzariaCD\data\scripts\tests` folders. The script is run as a background thread and will report progress in the log file.

### SIGNAL \<_machine_\> \<_signal_\>
Send a signal to a machine. This is not normally possible and might cause state machines to lose synchrony.
Example: Send the 'happy' emote signal to the local player avatar:
`;signal SID_ID SIG_HAPPY`  
`signal sent: signal SID_ID SIG_HAPPY`

### SQL

### STATUS

### TRACE

### WHERE

### viewname
