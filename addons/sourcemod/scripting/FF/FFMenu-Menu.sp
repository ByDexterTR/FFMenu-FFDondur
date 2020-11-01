void menugoster(int client)
{
	Menu menu = new Menu(Menu_Callback);
	menu.SetTitle("^-^ FF Menu - Ne Zaman FF Açılsın?");
	if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 1)
	{
		menu.AddItem("ffbaslat", "Dost Ateşi Başlat");
	}
	if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
	{
		menu.AddItem("ffkapat", "Dost Ateşi Kapat");
	}
	menu.AddItem("ben", "Kendim belirleyeceğim");
	menu.AddItem("60sn", "60 Saniye Sonra");
	menu.AddItem("50sn", "50 Saniye Sonra");
	menu.AddItem("45sn", "45 Saniye Sonra");
	menu.AddItem("40sn", "40 Saniye Sonra");
	menu.AddItem("30sn", "30 Saniye Sonra");
	menu.AddItem("20sn", "20 Saniye Sonra");
	menu.AddItem("15sn", "15 Saniye Sonra");
	menu.AddItem("10sn", "10 Saniye Sonra");
	menu.AddItem("5sn", "5 Saniye Sonra");
	menu.Display(client, MENU_TIME_FOREVER);
}

public int Menu_Callback(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char Item[32];
		menu.GetItem(param2, Item, sizeof(Item));
		if (StrEqual(Item, "ffbaslat", true))
		{
			PrintToChatAll("[SM] \x0C%N \x01tarafından Dost ateşi \x04açılmıştır!", param1);
			if (!FFAktif)
				FFAktif = true;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (Guns)
				Guns = false;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 1)
				SetCvar("mp_teammates_are_enemies", 1);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 1)
				SetCvar("mp_friendlyfire", 1);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
		}
		else if (StrEqual(Item, "ffkapat", true))
		{
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (Guns)
				Guns = false;
			if (FFAktif)
				FFAktif = false;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından Dost ateşi \x04iptal edilmiştir!", param1);
		}
		else if (StrEqual(Item, "ben", true))
		{
			ReplyToCommand(param1, "[SM] \x01Kullanım: sm_ffmenu (Saniye)");
			delete menu;
		}
		else if (StrEqual(Item, "60sn", true))
		{
			GeriSay = 60;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "50sn", true))
		{
			GeriSay = 50;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "45sn", true))
		{
			GeriSay = 45;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "40sn", true))
		{
			GeriSay = 40;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "30sn", true))
		{
			GeriSay = 30;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "20sn", true))
		{
			GeriSay = 20;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "15sn", true))
		{
			GeriSay = 15;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "10sn", true))
		{
			GeriSay = 10;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "5sn", true))
		{
			GeriSay = 5;
			if (g_gerisaytimer != null)
				delete g_gerisaytimer;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)
				SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)
				SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)
				SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x0C%N \x01tarafından \x04FF Süresi %d saniye \x01belirlenmiştir!", param1, GeriSay);
			yasaklisilah(param1);
		}
	}
	else if (action == MenuAction_End)
	{
		delete menu;
	}
}

void yasaklisilah(int client)
{
	Menu menu2 = new Menu(Menu2_Callback);
	menu2.SetTitle("^-^ FF Menu - Ayarlar");
	menu2.AddItem("onayla", "Ayarları Onayla");
	menu2.AddItem("ayarlasilah", "Yasaklı Ana Silahar");
	menu2.AddItem("ayarlatabanca", "Yasaklı Tabanacalar");
	if (bac)
		menu2.AddItem("bunnyayarla", "Bunny: [KAPALI]");
	else
		menu2.AddItem("bunnyayarla", "Bunny: [AÇIK]");
	if (revive)
		menu2.AddItem("canlandirmaayarla", "Oto Respawn: [AÇIK]");
	else
		menu2.AddItem("canlandirmaayarla", "Oto Respawn: [KAPALI]");
	menu2.ExitBackButton = true;
	menu2.ExitButton = false;
	menu2.Display(client, MENU_TIME_FOREVER);
}

public int Menu2_Callback(Menu menu2, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char Item[32];
		menu2.GetItem(param2, Item, sizeof(Item));
		if (StrEqual(Item, "onayla", true))
		{
			if (bac)
			{
				SetCvar("sv_enablebunnyhopping", 0);
				SetCvar("sv_autobunnyhopping", 0);
			}
			else
			{
				SetCvar("sv_enablebunnyhopping", 1);
				SetCvar("sv_autobunnyhopping", 1);
			}
			if (revive)
			{
				SetCvar("mp_respawn_on_death_t", 1);
			}
			else
			{
				SetCvar("mp_respawn_on_death_t", 0);
			}
			if (!Ak47 && !M4a4 && !M4a1 && !Awp)
				sadecetabanca = true;
			else if (Ak47 || M4a4 || M4a1 || Awp)
				sadecetabanca = false;
			FFAktif = true;
			Guns = true;
			for (int i = 1; i <= MaxClients; i++)
			{
				if (IsClientInGame(i) && !IsFakeClient(i) && IsPlayerAlive(i) && GetClientTeam(i) == CS_TEAM_T)
				{
					GivePlayerItem(i, "weapon_hegrenade");
					FakeClientCommand(i, "sm_guns");
				}
			}
			g_gerisaytimer = CreateTimer(1.0, GeriSayTimer, _, TIMER_REPEAT);
		}
		else if (StrEqual(Item, "ayarlasilah", true))
		{
			silahayarlama(param1);
		}
		else if (StrEqual(Item, "ayarlatabanca", true))
		{
			tabancaayarlama(param1);
		}
		else if (StrEqual(Item, "bunnyayarla", true))
		{
			if (bac)
				bac = false;
			else
				bac = true;
			yasaklisilah(param1);
		}
		else if (StrEqual(Item, "canlandirmaayarla", true))
		{
			if (revive)
				revive = false;
			else
				revive = true;
			yasaklisilah(param1);
		}
	}
	else if (action == MenuAction_End)
	{
		delete menu2;
	}
	else if (action == MenuAction_Cancel)
	{
		menugoster(param1);
		delete menu2;
	}
}

void tabancaayarlama(int client)
{
	Menu menub = new Menu(MenuB_Callback);
	menub.SetTitle("^-^ FF Menu - Yasaklı Tabancalar");
	if (!Deagle)
	{
		menub.AddItem("deaglem", "DEAGLE [KAPALI]");
	}
	else
	{
		menub.AddItem("deaglem", "DEAGLE [AÇIK]");
	}
	if (!Usp)
	{
		menub.AddItem("uspm", "USP-S [KAPALI]");
	}
	else
	{
		menub.AddItem("uspm", "USP-S [AÇIK]");
	}
	if (!Glock)
	{
		menub.AddItem("glockm", "GLOCK [KAPALI]");
	}
	else
	{
		menub.AddItem("glockm", "GLOCK [AÇIK]");
	}
	if (!P2000)
	{
		menub.AddItem("hkpm", "P2000 [KAPALI]");
	}
	else
	{
		menub.AddItem("hkpm", "P2000 [AÇIK]");
	}
	menub.ExitBackButton = true;
	menub.ExitButton = false;
	menub.Display(client, MENU_TIME_FOREVER);
}

public int MenuB_Callback(Menu menub, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char Item[32];
		menub.GetItem(param2, Item, sizeof(Item));
		if (StrEqual(Item, "deaglem", true))
		{
			if (!Deagle)
			{
				Deagle = true;
			}
			else
			{
				Deagle = false;
			}
		}
		else if (StrEqual(Item, "uspm", true))
		{
			if (!Usp)
			{
				Usp = true;
			}
			else
			{
				Usp = false;
			}
		}
		else if (StrEqual(Item, "glockm", true))
		{
			if (!Glock)
			{
				Glock = true;
			}
			else
			{
				Glock = false;
			}
		}
		else if (StrEqual(Item, "hkpm", true))
		{
			if (!P2000)
			{
				P2000 = true;
			}
			else
			{
				P2000 = false;
			}
		}
		tabancaayarlama(param1);
	}
	else if (action == MenuAction_End)
	{
		delete menub;
	}
	else if (action == MenuAction_Cancel)
	{
		yasaklisilah(param1);
		delete menub;
	}
}

void silahayarlama(int client)
{
	Menu menua = new Menu(MenuA_Callback);
	menua.SetTitle("^-^ FF Menu - Yasaklı Ana Silahlar");
	if (!Ak47)
	{
		menua.AddItem("ak47m", "AK47 [KAPALI]");
	}
	else
	{
		menua.AddItem("ak47m", "AK47 [AÇIK]");
	}
	if (!M4a4)
	{
		menua.AddItem("m4a4m", "M4A4 [KAPALI]");
	}
	else
	{
		menua.AddItem("m4a4m", "M4A4 [AÇIK]");
	}
	if (!M4a1)
	{
		menua.AddItem("m4a1m", "M4A1-S [KAPALI]");
	}
	else
	{
		menua.AddItem("m4a1m", "M4A1-S [AÇIK]");
	}
	if (!Awp)
	{
		menua.AddItem("awpm", "AWP [KAPALI]");
	}
	else
	{
		menua.AddItem("awpm", "AWP [AÇIK]");
	}
	menua.ExitBackButton = true;
	menua.ExitButton = false;
	menua.Display(client, MENU_TIME_FOREVER);
}

public int MenuA_Callback(Menu menua, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char Item[32];
		menua.GetItem(param2, Item, sizeof(Item));
		if (StrEqual(Item, "ak47m", true))
		{
			if (!Ak47)
			{
				Ak47 = true;
			}
			else
			{
				Ak47 = false;
			}
		}
		else if (StrEqual(Item, "m4a4m", true))
		{
			if (!M4a4)
			{
				M4a4 = true;
			}
			else
			{
				M4a4 = false;
			}
		}
		else if (StrEqual(Item, "m4a1m", true))
		{
			if (!M4a1)
			{
				M4a1 = true;
			}
			else
			{
				M4a1 = false;
			}
		}
		else if (StrEqual(Item, "awpm", true))
		{
			if (!Awp)
			{
				Awp = true;
			}
			else
			{
				Awp = false;
			}
		}
		silahayarlama(param1);
	}
	else if (action == MenuAction_End)
	{
		delete menua;
	}
	else if (action == MenuAction_Cancel)
	{
		yasaklisilah(param1);
		delete menua;
	}
}

void gunsmenu(int client)
{
	Menu menu3 = new Menu(Menu3_Callback);
	menu3.SetTitle("^-^ FF Menu - Silah Menü\n ");
	if (Ak47)
	{
		menu3.AddItem("akver", "AK47");
	}
	if (M4a4)
	{
		menu3.AddItem("a4ver", "M4A4");
	}
	if (M4a1)
	{
		menu3.AddItem("a1ver", "M4A1-S");
	}
	if (Awp)
	{
		menu3.AddItem("awpver", "AWP");
	}
	menu3.Display(client, MENU_TIME_FOREVER);
}

public int Menu3_Callback(Menu menu3, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		if (Guns)
		{
			RemovePlayerItem(param1, 1);
			char Item[32];
			menu3.GetItem(param2, Item, sizeof(Item));
			if (StrEqual(Item, "akver", true))
			{
				GivePlayerItem(param1, "weapon_ak47");
			}
			else if (StrEqual(Item, "a4ver", true))
			{
				GivePlayerItem(param1, "weapon_m4a1");
			}
			else if (StrEqual(Item, "a1ver", true))
			{
				GivePlayerItem(param1, "weapon_m4a1_silencer");
			}
			else if (StrEqual(Item, "awpver", true))
			{
				GivePlayerItem(param1, "weapon_awp");
			}
			tabancamenu(param1);
		}
		else
		{
			PrintToChat(param1, "[SM] Bu menüyü kullanmak için geciktin!");
			delete menu3;
		}
	}
	else if (action == MenuAction_End)
	{
		delete menu3;
	}
}

void tabancamenu(int client)
{
	Menu menu4 = new Menu(Menu4_Callback);
	menu4.SetTitle("^-^ FF Menu - Tabanca Menü\n ");
	if (Deagle)
	{
		menu4.AddItem("dver", "DEAGLE");
	}
	if (Usp)
	{
		menu4.AddItem("uver", "USP-S");
	}
	if (Glock)
	{
		menu4.AddItem("gver", "GLOCK");
	}
	if (P2000)
	{
		menu4.AddItem("pver", "P2000");
	}
	menu4.Display(client, MENU_TIME_FOREVER);
}

public int Menu4_Callback(Menu menu4, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		if (Guns)
		{
			RemovePlayerItem(param1, 2);
			char Item[32];
			menu4.GetItem(param2, Item, sizeof(Item));
			if (StrEqual(Item, "dver", true))
			{
				GivePlayerItem(param1, "weapon_deagle");
			}
			else if (StrEqual(Item, "uver", true))
			{
				GivePlayerItem(param1, "weapon_usp_silencer");
			}
			else if (StrEqual(Item, "gver", true))
			{
				GivePlayerItem(param1, "weapon_glock");
			}
			else if (StrEqual(Item, "pver", true))
			{
				GivePlayerItem(param1, "weapon_hkp2000");
			}
		}
		else
		{
			PrintToChat(param1, "[SM] Bu menüyü kullanmak için geciktin!");
			delete menu4;
		}
	}
	else if (action == MenuAction_End)
	{
		delete menu4;
	}
}