# ESX Adrenaline Speed Boost Item

This project adds a custom **Adrenaline** item in ESX, integrated with **OX\_Inventory**, which gives the player a temporary speed boost when used.

---

### Features

* Adds an **Adrenaline** item to **OX\_Inventory**
* Applies a 30-second speed boost effect when used
* Resets all player stats after the boost duration

---

### Requirements

* **[ESX](https://github.com/esx-framework/esx_core)**: Essential for the base functionality of the FiveM server.
* **[OX\_Inventory](https://github.com/overextended/ox_inventory)**: Inventory system to manage and use items, integrated with ESX.

---

## Installation

### 1. Clone or Download the Script

1. Download or clone this repository to your FiveM resources directory.
2. Rename the folder to `esx_syringe` if it has a different name.

### 2. Add the Adrenaline Item to `OX_Inventory`

In your `ox_inventory` configuration (usually `data/items.lua`), add the following entry for the adrenaline item:

<pre class="!overflow-visible"><div class="contain-inline-size rounded-md border-[0.5px] border-token-border-medium relative bg-token-sidebar-surface-primary dark:bg-gray-950"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md h-9 bg-token-sidebar-surface-primary dark:bg-token-main-surface-secondary"></div></div></pre>
