GDPC                                                                               <   res://.import/eye.png-b3e780ccd982786a6aea56b27c57907a.stex �      `       V6��F��s���QG<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�(      �      &�y���ڞu;>��.p@   res://.import/light.png-1121b5c14d4be0e67742887b13152829.stex   �      �       �)�G�=���dƅ}D   res://.import/placeholder.png-dffc0361d75f36e952ef924630da8193.stex 0!      l       [,�q���ς���!"@   res://.import/tilemap.png-f3c458f64c9c7f0313153a9886a79f91.stex p$      �       ���pS��Tq��ǳ�   res://BABY.gd.remap 1             8�?��%��)&���;   res://BABY.gdc         d      ܐMS�3#?r)GqH��   res://BABY.tscn �
      &      &W��H+o�%� ���   res://Game.tscn �      �      u1g��_k���5o�    res://assets/Baby/eye.png.import�      �      �m�����xUW&��6$   res://assets/Baby/light.png.import  p      �      �}-9��~��9
5�0!(   res://assets/Baby/placeholder.png.import�!      �      ��)|���|ų�U5	$   res://assets/Baby/tilemap.png.import%      �      Y#��e����¹X���   res://default_env.tres  �'      �       um�`�N��<*ỳ�8   res://icon.png  01      �      G1?��z�c��vN��   res://icon.png.import   `.      �      ��fe��6�B��^ U�   res://project.binary >      �	      m��=�����L�N1��GDSC      	   4   �      ������������τ�   ����Ҷ��   �������϶���   ��������   ���������Ҷ�   ���Ŷ���   �����϶�   �������Ŷ���   ����׶��   �������������¶�   �������������Ӷ�   ����������¶   ����¶��   ����������������Ҷ��   ζ��   ϶��   ���������Ҷ�   �������Ӷ���   �������Ӷ���   ��������Ӷ��   ������Ӷ   �                right               left      down      up        blink                                                             	   "   
   #      $      *      ,      -      .      /      6      :      ?      C      D      E      K      Q      R      [      a      j      p      y             �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   3YYY8P�  Q;�  Y;�  �  T�  YY;�  �  YY5;�  W�  YYY0�  PQV�  -YYYY0�  P�  QV�  �	  PQ�  �
  P�  Q�  �  PQ�  �  Y0�	  PQV�  �  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  �  �  �  T�  PQ�  YY0�  PQV�  �  ;�  �  T�  P�  Q�  ;�  �  T�  P�  Q�  �  �  &�  T�  P�  QV�  �  �  �  �  �  (V�  �  �  �  �  �  T�  �  �  �  T�  �  Y`            [gd_scene load_steps=8 format=2]

[ext_resource path="res://assets/Baby/placeholder.png" type="Texture" id=1]
[ext_resource path="res://BABY.gd" type="Script" id=2]
[ext_resource path="res://assets/Baby/eye.png" type="Texture" id=3]
[ext_resource path="res://assets/Baby/light.png" type="Texture" id=4]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 40.5, 38 )

[sub_resource type="SpriteFrames" id=3]
animations = [ {
"frames": [ ExtResource( 3 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[node name="BABY" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="EYEOFSAURON" type="Camera2D" parent="."]
current = true

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
scale = Vector2( 3, 3 )
frames = SubResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 7.5, 9 )
shape = SubResource( 2 )
__meta__ = {
"_edit_group_": true,
"_edit_lock_": true
}

[node name="eyes" type="Node2D" parent="."]
__meta__ = {
"_edit_lock_": true
}

[node name="left" type="AnimatedSprite" parent="eyes"]
position = Vector2( -10, -7 )
scale = Vector2( 3, 3 )
frames = SubResource( 3 )

[node name="light" type="Light2D" parent="eyes/left"]
scale = Vector2( 3, 3 )
texture = ExtResource( 4 )
color = Color( 0.0313726, 1, 0, 1 )

[node name="right" type="AnimatedSprite" parent="eyes"]
position = Vector2( 27, -7 )
scale = Vector2( 3, 3 )
frames = SubResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="light" type="Light2D" parent="eyes/right"]
scale = Vector2( 3, 3 )
texture = ExtResource( 4 )
color = Color( 0.0313726, 1, 0, 1 )
__meta__ = {
"_edit_lock_": true
}
          [gd_scene load_steps=5 format=2]

[ext_resource path="res://BABY.tscn" type="PackedScene" id=1]
[ext_resource path="res://assets/Baby/tilemap.png" type="Texture" id=2]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 31.8417, 32, 0.305466, 32, 0.305466, 17.1407, 31.8417, 17.1407 )

[sub_resource type="TileSet" id=2]
0/name = "tilemap.png 0"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 32, 32 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
1/name = "tilemap.png 1"
1/texture = ExtResource( 2 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 32, 0, 32, 32 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape_one_way = false
1/shape_one_way_margin = 0.0
1/shapes = [  ]
1/z_index = 0
2/name = "tilemap.png 2"
2/texture = ExtResource( 2 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 64, 0, 32, 32 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape = SubResource( 1 )
2/shape_one_way = false
2/shape_one_way_margin = 1.0
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
2/z_index = 0

[node name="Game" type="Node2D"]

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 2 )
cell_size = Vector2( 32, 32 )
format = 1
tile_data = PoolIntArray( -65538, 2, 0, -65537, 2, 0, -131072, 2, 0, -131071, 2, 0, -131070, 2, 0, 131069, 1, 0, 131070, 1, 0, 65538, 0, 0, 65539, 0, 0, 196605, 1, 0, 196606, 1, 0, 131073, 0, 0, 131074, 0, 0, 131075, 0, 0, 262141, 1, 0, 262142, 1, 0, 262143, 1, 0, 196609, 0, 0 )

[node name="BABY" parent="." instance=ExtResource( 1 )]
         GDST	                D   WEBPRIFF8   WEBPVP8L,   /�0�9P�"�G|
ڶa�r�?�U�����p{n@[remap]

importer="texture"
type="StreamTexture"
path="res://.import/eye.png-b3e780ccd982786a6aea56b27c57907a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/Baby/eye.png"
dest_files=[ "res://.import/eye.png-b3e780ccd982786a6aea56b27c57907a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
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
detect_3d=false
svg/scale=1.0
   GDST                 �   WEBPRIFF�   WEBPVP8L�   /�'0��?�B�:�� D�[7���� 
��?(��~D����F����g���Қ��$�B閊��z���1�+P4��qHv�s�M7:'�
|�;Fw	�!�;��?�^]���w��_�_�73������[APRI�����\ki3�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/light.png-1121b5c14d4be0e67742887b13152829.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/Baby/light.png"
dest_files=[ "res://.import/light.png-1121b5c14d4be0e67742887b13152829.stex" ]

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
               GDST                  P   WEBPRIFFD   WEBPVP8L8   /��BUm��3�S@�D},	,o�� �� 8-�K�z���5�h~a?�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/placeholder.png-dffc0361d75f36e952ef924630da8193.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/Baby/placeholder.png"
dest_files=[ "res://.import/placeholder.png-dffc0361d75f36e952ef924630da8193.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
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
detect_3d=false
svg/scale=1.0
           GDST�   �            ~   WEBPRIFFr   WEBPVP8Le   /�G���$56G6��ʹmc�Fj���#�د��R�! (�� �
^9(?�؁���m�@D�*A$w��CD�'��Np�՟�ImF.05���0       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tilemap.png-f3c458f64c9c7f0313153a9886a79f91.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/Baby/tilemap.png"
dest_files=[ "res://.import/tilemap.png-f3c458f64c9c7f0313153a9886a79f91.stex" ]

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
         [gd_resource type="Environment" load_steps=2 format=2]

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

path="res://BABY.gdc"
 �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         BABYlike   application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png  
   input/left�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            deadzone      ?   input/right�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script            deadzone      ?   input/up�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            deadzone      ?
   input/down�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script            deadzone      ?   input/blink�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script            deadzone      ?)   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres               