{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "top";
    layer= "top";
    height= 5;
    margin-top= 0;
    margin-bottom= 0;
    margin-left= 0;
    margin-right= 0;
    modules-left= [
        "custom/launcher"
        "hyprland/workspaces"
        "custom/weather-geel"
        "custom/weather-boechout"
    ];
    modules-center= [
        "clock"
    ];
    modules-right= [
        "tray" 
        "cpu"
        "memory"
        "disk"
        "pulseaudio" 
        "battery"
        "network"
        "bluetooth"
    ];
    clock= {
        calendar = {
          format = { today = "<span color='#b4befe'><b><u>{}</u></b></span>"; };
        };
        format = " {:%H:%M}";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= " {:%d/%m}";
    };
    "hyprland/workspaces"= {
        active-only= false;
        disable-scroll= true;
        format = "{icon}";
        on-click= "activate";
        format-icons= {
            "1"= "󰈹";
            "2"= "";
            "3"= "󰘙";
            "4"= "";
            "5"= "";
            urgent= "";
            default = "";
            sort-by-number= true;
        };
        persistent-workspaces = {
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
        };
    };
    memory= {
        format= "󰟜 {}%";
        format-alt= "󰟜 {used} GiB"; # 
        interval= 2;
    };
    cpu= {
        format= "  {usage}%";
        format-alt= "  {avg_frequency} GHz";
        interval= 2;
    };
    disk = {
        # path = "/";
        format = "󰋊 {percentage_used}%";
        interval= 60;
    };
    network = {
        format-wifi = "  {signalStrength}%";
        format-ethernet = "󰀂 ";
        tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
        format-linked = "{ifname} (No IP)";
        format-disconnected = "󰖪 ";
    };
    bluetooth = {
        format = "󰂯";
        format-on = "󰂯";
        format-disabled = "󰂲";
        format-connected=" {num_connections}";
        tooltip-format-on = "Bluetooth is on";
        tooltip-format-disabled = "Bluetooth is off";
        tooltip-format-connected = "{device_enumerate}";
        tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
    };
    tray= {
        icon-size= 20;
        spacing= 8;
    };
    pulseaudio= {
        format= "{icon} {volume}%";
        format-muted= "󰖁  {volume}%";
        format-icons= {
            default= [" "];
        };
        scroll-step= 5;
        on-click= "pamixer -t";
        on-click-right= "pavucontrol";
    };
    battery = {
        format = "{icon} {capacity}%";
        format-icons = [" " " " " " " " " "];
        format-charging = " {capacity}%";
        format-full = " {capacity}%";
        format-warning = " {capacity}%";
        interval = 5;
        states = {
            warning = 20;
        };
        format-time = "{H}h{M}m";
        tooltip = true;
        tooltip-format = "{time}";
    };
    "custom/launcher"= {
        format= "";
        on-click= "fuzzel";
        on-click-right= "wallpaper-picker"; 
        tooltip= "false";
    };
    "custom/weather-geel" = {
      exec = "weather Geel";
      return-type = "json";
      format = "Geel {}";
      tooltip = true;
      interval = 3600;
    };
    "custom/weather-boechout" = {
      exec = "weather Boechout";
      return-type = "json";
      format = "Boechout {}";
      tooltip = true;
      interval = 3600;
    };
  };
}
