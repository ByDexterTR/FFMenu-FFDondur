public Action OnClientDead(Event event, const char[] name, bool dontBroadcast)
{
	if (FFAktif || DondurmaSure != -1)
	{
		int iCount_terrorist = 0;
		for (int i = 1; i < MaxClients; i++)
		{
			if (IsClientInGame(i) && IsPlayerAlive(i) && !IsFakeClient(i))
			{
				if (GetClientTeam(i) == CS_TEAM_T)iCount_terrorist++;
			}
		}
		if (iCount_terrorist == 1)
		{
			if (g_gerisaytimer != null)delete g_gerisaytimer;
			if (g_gerisaytimerr != null)delete g_gerisaytimerr;
			if (Guns)Guns = false;
			if (FFAktif)FFAktif = false;
			if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)SetCvar("mp_teammates_are_enemies", 0);
			if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)SetCvar("mp_friendlyfire", 0);
			if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)SetCvar("mp_respawn_on_death_t", 0);
			PrintToChatAll("[SM] \x01Dost ateşi \x04iptal edilmiştir!");
		}
	}
}

public Action RoundStartEnd(Event event, const char[] name, bool dontBroadcast)
{
	if (g_gerisaytimer != null)delete g_gerisaytimer;
	if (g_gerisaytimerr != null)delete g_gerisaytimerr;
	if (Guns)Guns = false;
	if (FFAktif)FFAktif = false;
	if (GetConVarInt(FindConVar("mp_teammates_are_enemies")) != 0)SetCvar("mp_teammates_are_enemies", 0);
	if (GetConVarInt(FindConVar("mp_friendlyfire")) != 0)SetCvar("mp_friendlyfire", 0);
	if (GetConVarInt(FindConVar("mp_respawn_on_death_t")) != 0)SetCvar("mp_respawn_on_death_t", 0);
	if (GetConVarInt(FindConVar("mp_damage_headshot_only")) != 0)SetCvar("mp_damage_headshot_only", 0);
}

public Action OnClientSayCommand(int client, const char[] command, const char[] sArgs)
{
	if (!g_Gidilecekyerbelirten[client])return;
	Format(GidilecekYer, sizeof(GidilecekYer), "%s", sArgs);
	g_Gidilecekyerbelirten[client] = false;
	g_gerisaytimerr = CreateTimer(1.0, DondurGeriSay, _, TIMER_REPEAT);
	for (int i = 1; i <= MaxClients; i++)
	{
		if (IsClientInGame(i) && !IsFakeClient(i))
		{
			Handle ScreenText = CreateHudSynchronizer();
			SetHudTextParams(-1.0, -0.60, 5.0, 130, 34, 33, 255, 2, 0.1, 0.1, 0.1);
			ShowSyncHudText(i, ScreenText, "%s", sArgs);
			delete ScreenText;
		}
	}
} 