GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�&      �      &�y���ڞu;>��.p   res://Scenes/Game.tscn  �      �       ���[�NJ�a�P,1P   res://Scenes/Lobby.tscn �      '
      ~m����6!_�>�}j   res://Scenes/Player.tscn�      -      �*�%C��#�R{��$   res://Scripts/Connecting.gd.remap   /      -       �:=ٙSB��o1z�1?   res://Scripts/Connecting.gdc�      �      �������f�Y�   res://Scripts/Game.gd.remap @/      '       M�����*+��e��:�   res://Scripts/Game.gdc  �      m      8�
�݉m���g��7$   res://Scripts/HostButton.gd.remap   p/      -       �0�é����~���   res://Scripts/HostButton.gdc      �      ��zڃ?�JR�����:u$   res://Scripts/JoinButton.gd.remap   �/      -       ̽�{F;M-��#�:�)h   res://Scripts/JoinButton.gdc�            [���l��.��"��v9�   res://Scripts/Lobby.gd.remap�/      (       �z*���ə�fU�5	   res://Scripts/Lobby.gdc �      T      Hv��
Hݞ,E�ɢ��    res://Scripts/Player.gd.remap    0      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc0      �      �Yw�£)����2�    res://Scripts/network.gd.remap  00      *       ��!��'k�B`��?   res://Scripts/network.gdc   !      �      vw�Lg0�v����#A�   res://default_env.tres  �%      �       um�`�N��<*ỳ�8   res://icon.png  `0      �      G1?��z�c��vN��   res://icon.png.import   `,      �      ��fe��6�B��^ U�   res://project.binaryP=      �      �B�aoˀ%-:�4F            [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Game.gd" type="Script" id=1]

[node name="Game" type="Node2D"]
script = ExtResource( 1 )
   [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scripts/Lobby.gd" type="Script" id=1]
[ext_resource path="res://Scripts/JoinButton.gd" type="Script" id=2]
[ext_resource path="res://Scripts/Connecting.gd" type="Script" id=3]
[ext_resource path="res://Scripts/HostButton.gd" type="Script" id=4]

[node name="Lobby" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Host" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -119.5
margin_top = -172.0
margin_right = 119.5
margin_bottom = -58.0
text = "Host"
script = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="IP" type="Label" parent="Host"]
margin_top = -31.0
margin_right = 240.0
margin_bottom = -9.0
text = "IP: [Private IP]"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Join" type="Button" parent="."]
anchor_left = 0.384
anchor_top = 0.453
anchor_right = 0.384
anchor_bottom = 0.453
margin_left = -0.216003
margin_top = 31.2
margin_right = 238.784
margin_bottom = 142.2
text = "Join"
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="IP" type="LineEdit" parent="Join"]
margin_top = 144.0
margin_right = 241.0
margin_bottom = 168.0
align = 1
placeholder_text = "Host's IP Address"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="InvalidIP" type="Label" parent="Join"]
visible = false
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -119.5
margin_top = 116.5
margin_right = 121.5
margin_bottom = 130.5
custom_colors/font_color = Color( 1, 0, 0, 1 )
text = "Invalid IP Address!"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Connecting" type="ColorRect" parent="."]
visible = false
anchor_right = 1.0
anchor_bottom = 1.0
color = Color( 0, 0, 0, 1 )
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Connecting"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -55.0
margin_top = -7.0
margin_right = 55.0
margin_bottom = 7.0
text = "[Connecting Text]"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="pressed" from="Host" to="Host" method="host"]
[connection signal="set_connect_type" from="Host" to="Connecting" method="set_connect_type"]
[connection signal="pressed" from="Join" to="Join" method="_pressed"]
[connection signal="set_connect_type" from="Join" to="Connecting" method="set_connect_type"]
         [gd_scene load_steps=3 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Player.gd" type="Script" id=2]

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
   GDSC            7      ��������¶��   �����������ⶶ��   ���������������Ӷ���   ���¶���   ��������   ����ڶ��   ���¶���      Waiting for players...        Connecting to server...                                                                  	      
   (      +      5      3YY:�  LR�  MYYYY0�  P�  QV�  �  PQ�  &�  V�  W�  T�  �  L�  M�  (V�  W�  T�  �  L�  MY`    GDSC            ]      ���ӄ�   �����϶�   ��¶   ������Ŷ   �������������Ŷ�   �Ҷ�   �������Ŷ���   ������������Ķ��   �����Ҷ�   ƶ��   �������Ӷ���   ��������Ҷ��   ���������Ӷ�      Player with ID         initialized      res://Scenes/Player.tscn                         
                           	   #   
   (      /      0      7      C      O      T      [      3YYY0�  PQV�  �  T�  PQ�  �  PQYY0�  PQV�  )�  �  T�  V�  �  P�  Q�  �  P�  T�  QYY0�  P�  QV�  �?  P�>  P�  Q�  Q�  ;�	  ?P�  QT�
  PQ�  �  P�	  Q�  �	  T�  P�  QY`   GDSC   
         6      �����ض�   ���������������Ӷ���   �����϶�   �涶   ���¶���   ������������������Ŷ   ���¶���   ��¶   ����������������Ķ��   ����������ڶ      IP:    	         set_connect_type                                                  !      '   	   -   
   4      3YYB�  YY0�  PQV�  W�  T�  �>  P�  T�  PQL�  MQYY0�  PQV�  �  T�  PQ�  �	  P�  R�  QY`           GDSC            D      �����ض�   ���������������Ӷ���   �������Ҷ���   �涶   ���¶���   ������������������Ŷ   ���ض���   ��������涶�   ��������   ��¶   ����������������¶��   ����������ڶ      set_connect_type                                            	               	      
   !      (      )      *      0      :      A      B      3YYB�  YYYY0�  PQV�  &W�  T�  T�  PQV�  �  PQ�  (V�  W�  T�  PQ�  �  Y0�  PQV�  �	  T�
  PW�  T�  Q�  �  PR�  Q�  Y`    GDSC            O      ������ڶ   �����϶�   �涶   ������������������Ŷ   �������Ӷ���   ������¶   ��������Ҷ��   ��¶   ������¶   ��ն   ���������Ӷ�   �����������Ӷ���      connected_to_server    	   connected      	   CONNECTED      
   begin_game        res://Scenes/Game.tscn                           
                   !      '   	   ,   
   3      8      <      =      D      M      3YYY0�  PQV�  �?  P�  T�  PQQ�  �  PQT�  PRR�  QYY0�  PQV�  �?  P�  Q�  &�  T�  V�  �	  P�  Q�  �
  PQ�  YD0�
  PQV�  �  PQT�  P�  QY`            GDSC         %   �      ������������τ�   ����򶶶   ��������Ķ��   ���������Ӷ�   �Ҷ�   ���Ӷ���   ��¶   �����Ҷ�   �������Ӷ���   ���������������Ŷ���   ����׶��   �������϶���   ����¶��   ����������������Ҷ��   ζ��   ϶��   �������������Ӷ�   �������������Ӷ�   �������ض���   ��������������ض   ��Ŷ   ^                  �                Player name is        ui_right      ui_left       ui_down       ui_up         update_position                          	      
                     	      
   &      *      -      :      A      B      C      J      N      U      ^      d      m      t      w      }      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   3YYY:�  YY;�  �  YY0�  P�  QV�  �  �>  P�  Q�  &�  �  T�  V�  �  �  �  (V�  �  �S  P�  R�  R�  R�  Q�  �?  P�  �  QYYY0�	  P�
  QV�  &�  V�  ;�  �  PQ�  &�  T�  P�  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  '�  T�  P�	  QV�  �  T�  �  �  (V�  �  T�  �  �  �  P�  Q�  �  P�
  R�  QYYD0�  P�  QV�  �  �  Y`         GDSC      
      �      ���Ӷ���   �������ⶶ��   �����������   ���������涶   ���������������   �����Ҷ�   ������¶   �������Ŷ���   ����������������Ķ��   ���Ķ���   �����������������������¶���   ����   ������������Ķ��   �������Ӷ���   �����������Ķ���   ����������������¶��   ��������ƶ��   ������������¶��   ������Ŷ   ��������������������Ҷ��   ��������������������������Ŷ   �z           	   127.0.0.1                          initialized as host       initialized as client         ID is          and peer IDs are                                                       	   "   
   (      )      /      3      <      E      M      R      S      Z      ^      b      k      t      |      �      �      �      �      �      �      3YY:�  Y:�  �  Y:�  �  Y:�  �  YY;�  �  Y;�  �  Y;�  LMYY0�  PQV�  �  �  �  ;�	  �
  T�  PQ�  �	  T�  P�  R�  Q�  �  PQT�  �	  �  �?  P�  QYY0�  P�  QV�  &�  V�  �  �  �  ;�	  �
  T�  PQ�  �	  T�  P�  R�  Q�  �  PQT�  �	  �  �?  P�  QYY0�  PQV�  �  �  PQT�  PQ�  �  �  PQT�  PQ�  �?  P�  �>  P�  Q�	  �>  P�  QQY`         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Scripts/Connecting.gdc"
   [remap]

path="res://Scripts/Game.gdc"
         [remap]

path="res://Scripts/HostButton.gdc"
   [remap]

path="res://Scripts/JoinButton.gdc"
   [remap]

path="res://Scripts/Lobby.gdc"
        [remap]

path="res://Scripts/Player.gdc"
       [remap]

path="res://Scripts/network.gdc"
      �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name$         Godot- Multiplayer- Tutorial   application/run/main_scene          res://Scenes/Lobby.tscn    application/config/icon         res://icon.png     autoload/Net$         *res://Scripts/network.gd   )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres            