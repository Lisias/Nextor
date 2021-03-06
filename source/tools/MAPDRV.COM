��MAPDRV - map a drive to a driver, device, LUN and partition

Usage:

MAPDRV [/L] <drive>: <partition>|d|u [<device>[-<LUN>] [<slot>[-<subslot>]|0]]

Maps the drive to the specified partition of the specified device and LUN
of the driver in the specified slot (must be a device-based driver).

/L locks the drive immediately after doing the mapping.

<partition> can be any number starting at 1, or 0 to map the drive directly
to the device (needed for partitionless devices such as floppy disks).
Partition numbers 2 to 4 refer to extended partitions 2-1 to 2-4 if partition
2 of the device is extended, otherwise they refer to primary partitions.

<device> and <LUN> must be a number from 1 to 7 each one. If <device> is
specifided but <LUN> is omitted, value 1 is assumed for <LUN>.

<slot> and <subslot> must be a number from 0 to 3. If 0 is specified instead,
the primary disk controller slot is assumed.

If device information is provided but slot is omitted, the drive is mapped to
the specified partition of the specified device in the driver already
controlling the drive (this works only if the drive is currently mapped
to a device-based driver).

If both device and slot information are omitted, the drive is mapped to the
specified partition of the device it is already mapped to (this works only if
the drive is currently mapped to a device-based driver).

'd' will revert the drive to its default mapping (the mapping at boot time).
'u' will leave the drive unmapped. Other parameters are ignored in both cases.
MAPDRV - map a drive to a driver, device, LUN and partition

MAPDRV [/L] <drive>: <partition>|d|u [<device>[-<LUN>] [<slot>[-<subslot>]|0]]

TYPE MAPDRV.COM for more details.
 ͤ
�	>�'
 r� Gb� �! :�	�/  #:�	� �l >�2�	�	>�'
�b� �#!�	�|=2�	�	�}�#�'
�b� :�	� �dʬ�u ʬ!�	��	2�	�	�}�#�'
ں:�	�1��	�8��	�02�	:�	�(�-��	:�	�1��	�8��	�02�	�	�}�#�'
ں!�	��� :H�2�	x2�	:�	|� Gb� :�	< Z:�	!�	y� Gb� :�	��b� :�	� :�	2�	:�	2�	�#V#^!�	x� Gb� :�	��b� :�	2�	:�	2�	:�	��l	�(/�07!    �!�	�~�F�V�^&. z� `Gb� |�(:�	2�	�2�	>2�	:�	=2�	!    :�	�(!�!�	�~�F�V�^�f�nz� Gb� �S�	"�	:�	!�	|� G� :�	�(:�	_>�w� Gb� �Z��b� �b�      �� �
8
�d8��8,�0�w �#�0�
�
0��q �#��6 1�d�#�
0��6 0�#��6 2���7�G:� �7�x��:� O !� 	6 �������!  �g!� ~�(� #(��#~�(� #(���|=ݽ02!� ~� #(��|�(	~� # �� +~� (�(#��}�7�����Z!4ͫo�!  � ��
x�8���x� y�8�x��	�  � *** This program requires Nextor 2.0 or later
$*** Bad version of NEXTOR.SYS, version 2.0 or later is required
$~� �o�N#~� �f #~� �f�N#~��N��n�N#~��N=�~� �a�N�i�N�#~�:�N#~��N��`�~� �a8�i0�#~�: 	#~� ��`��>������0_� ��(��0_�-� �� �x������!���6  ���r� :000 �
8
�d8��8,�0�w �#�0�
�
0��q �#��6 1�d�#�
0��6 0�#��6 2����	+~�  x� ��#6 �r� �pط7�x�7�z�7�yJ 	������!��� ��� �    ~_�08'�:0#z�(�����  {�0O	ܬ���#��� �� {�0���:���~ ����?��� ���������%��ܬܬܬ�����>�2H2I�J��N2G{�(*�:(�-�N#�J��N2H{�(�:�N#�J2I{��N:H��(�G:G���2G:IG:G�   �Z��b� 