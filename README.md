# Auto Feed

## 介绍 | Introduction

将食物丢地上就能自动喂食的MC数据包（1.18+）  
A Minecraft data pack which helps you feed animals automatically by simply drop the food on the ground.

If you can not spare enough time and effort to feed animals in Minecraft or the players on server are too lazy too do so, this datapack will help you!

Report bugs if found.

## 兼容的Minecraft版本 | Supported Minecraft versions
Minecraft Java版 1.18.x  
Minecraft Java Edition 1.18.x

**同时兼容单人与多人游戏**  
**Works in both singleplayer and multiplayer mode.**

## 安装方式 | How to Install

1. Download the latest version as a .zip file.
1. Open your minecraft directory.
1. Copy the .zip file to `.minecraft\saves\<World>\datapacks\`.
1. In Minecraft, enter `/reload` command.
1. Enjoy!

## 可自动喂食的动物 | Supported Animals
- 小麦 → 绵羊、牛、哞菇、山羊
- 胡萝卜、马铃薯、甜菜根 → 猪
- 小麦种子、南瓜种子、西瓜种子、甜菜种子 → 鸡
- wheat → sheep, cow, mooshroom, goat
- carrot, potato, beetroot → pig
- wheat seeds, pumpkin seeds, melon seeds, beetroot seeds → chicken

## How to use
- Run `/trigger autofeed_enable` to enable auto feed the food you dropped.
- Run `/trigger autofeed_disable` to disable auto feed the food you dropped.

**注意：** 非玩家扔出的食物永远会被自动喂食。  
**NOCICE:** Food not throwed by players will always be fed automatically.

## How to Uninstall
- Run `/function autofeed:uninstall` (requires OP)
- Run `/datapack disable <AutoFeed Datapack Name>`
