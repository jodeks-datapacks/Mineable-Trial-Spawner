scoreboard players set @a help.mineabletrialspawner 0

tellraw @s \
[\
  "\n",\
  {\
  text:"[HELP] ",\
    color:"gray"\
  },\
  {\
  text:"Mineable Trial Spawner",\
    bold:true\
  },\
  "\n\nTo open the config run:\n",\
  {\
    text:"/trigger config.mineabletrialspawner",\
    color:"yellow"\
  },\
  "\n\nTo uninstall run:\n",\
  {\
    text:"/function mineabletrialspawner:uninstall",\
    color:"yellow"\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
      {\
        action:"open_url",\
        url:"https://modrinth.com/datapack/mineable-trial-spawner"\
      },\
    hover_event:\
      {\
        action:"show_text",\
        value:"modrinth.com/datapack/mineable-trial-spawner"\
      }\
  },\
  {\
    text:"Modrinth Mineable Trial Spawner",\
    color:"dark_purple",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://modrinth.com/datapack/mineable-trial-spawner"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"modrinth.com/datapack/mineable-trial-spawner"\
    }\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  {\
    text:"Discord Server",\
    color:"blue",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  " --> for issues, suggestions, questions and news"\
]