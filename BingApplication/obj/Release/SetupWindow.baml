   M S B A M L   `   `   `  ���� J  FBingApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BingApplicationBingApplication  !    BingApplication.SetupWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     /localclr-namespace:BingApplication     -     � Title$  设置��$	��300��$	��450�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � ShowInTaskbar .   � Icon$ app.ico�� � 	Resources  �� 
TargetType �� Property �� Value   b2v��%<   '�       &	  #     �� " �.���  � ��$ 10q��� .��� .+��� .+��� $��基本��.��� 	 � RowDefinitions	 �� �� $��7 ��� �� $��7 ��� �� $��7 ��� 
 � ColumnDefinitions
 �� $��* ��� $��60 �.+��� $��Bottom=�$��0��$��0��$��2��壁纸存储路径：�� -   $��textPath��$��Bottom=�$��2��$��0��$
��Auto���� -   $��
selectPath��$��Bottom=�$��2��$��1��.��选择路径�� -   $��chkSave��$��Bottom=�$��4��$��0��$��2��.��保存当天壁纸到本地�� -   $��chkWall��$��Bottom=�$��6��$��0��$��2��.��/-自动将当天的壁纸设置成桌面背景�� $��高级��$��90��.��� 	 �� �� $��5 ��� 
 �� �� .+��� -   $��
autoChange��$��Bottom=�$��0��$��0�� d� 	IsChecked$
 TrueY�.��开启自动更换壁纸�� -   $��intervalPanel��$��Bottom=�$��0��$��1�� �� Orientation$ 
Horizontal=�y���  �� ElementName$ 
autoChange�� �� Path$ 	IsChecked� �� 	Converter# [   �� Mode$ OneWay=�.+��� $��Bottom=�更换时间间隔：�� -   $��combobox��$��Bottom=��� -	   $��checkBoxSound��$��Bottom=�$��2��$
 TrueY�.��开启更换主题音效�� $��0 5 0 0q�?=提示：壁纸默认保存在程序所在路径的bing目录