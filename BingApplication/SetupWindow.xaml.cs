﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Forms;
using System.Configuration;

namespace BingApplication
{
    /// <summary>
    /// SetupWindow.xaml 的交互逻辑
    /// </summary>
    public partial class SetupWindow : Window
    {
        
        public SetupWindow()
        {
            InitializeComponent();
            InitData();
            IniConfig();
        }

        /// <summary>
        /// 初始化数据
        /// </summary>
        private void InitData()
        {
            initComboData();
        }

        /// <summary>
        /// 初始化下拉列表数据
        /// </summary>
        private void initComboData()
        {
            List<ComboInterval> datas = new List<ComboInterval>(){
                new ComboInterval(){Name="1分钟", Interval = 1},
                new ComboInterval(){Name="5分钟", Interval = 5},
                new ComboInterval(){Name="10分钟", Interval = 10},
                new ComboInterval(){Name="30分钟", Interval = 30},
                new ComboInterval(){Name="1小时", Interval = 60}
            };

            combobox.ItemsSource = datas;
            combobox.SelectedValue = "Interval";
            combobox.DisplayMemberPath = "Name";
            combobox.SelectedIndex = 0;
        }

        /// <summary>
        /// 初始化配置参数
        /// </summary>
        private void IniConfig()
        {
            textPath.Text = ConfigUtils.getStorgePath().Value;
            chkWall.IsChecked = Boolean.Parse(ConfigUtils.getAutoWallPaper().Value);
            //chkAutoStart.IsChecked = Boolean.Parse(ConfigUtils.getAutoStartup().Value);
            chkSave.IsChecked = Boolean.Parse(ConfigUtils.getAutoSave().Value);
            autoChange.IsChecked = Boolean.Parse(ConfigUtils.getElement(ConfigUtils.AUTO_CHANGE_WALLPAPER).Value);
            checkBoxSound.IsChecked = Boolean.Parse(ConfigUtils.getElement(ConfigUtils.CHANGE_SOUND).Value);
            KeyValueConfigurationElement e = ConfigUtils.getElement(ConfigUtils.AUTO_CHANGE_WALLPAPER_INTERVAL);
            if (e != null)
            {
                int interval = int.Parse(e.Value);

                foreach (var item in combobox.ItemsSource)
                {
                    ComboInterval cil = item as ComboInterval;
                    if (interval == cil.Interval)
                    {
                        combobox.SelectedItem = cil;
                        break;
                    }
                }
            }
        }

        private void selectPath_Click(object sender, RoutedEventArgs e)
        {
            selectPathOpera();
        }

        private void textPath_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            selectPathOpera();
        }

        private void selectPathOpera()
        {
            FolderBrowserDialog folderDialog = new FolderBrowserDialog();
            if (folderDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                string path = folderDialog.SelectedPath;
                textPath.Text = path;
                //ConfigUtils.setStorgePath(path);                
            }
        }


        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            
        }

        private void chkWall_Click(object sender, RoutedEventArgs e)
        {
            if (chkWall.IsChecked == true)
            {
                chkSave.IsChecked = chkWall.IsChecked;
            }
            if (chkWall.IsChecked == true && ConfigUtils.getElement(ConfigUtils.WARNING_SAVE).Value.Equals("Yes"))
            {
                MessageBoxResult result = System.Windows.MessageBox.Show("您选择了自动设置桌面壁纸选项，程序需要将图片下载到本地才能保证运行正常！\n是否需要继续看到该提醒？", "这是一条提示信息", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                ConfigUtils.setProp(result.ToString(),ConfigUtils.WARNING_SAVE);
            }
        }

        private void Window_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            if (e.Key == Key.Escape)
            {
                Close();
            }
        }

    }
}
