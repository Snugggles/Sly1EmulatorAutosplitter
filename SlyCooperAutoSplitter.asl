state("PCSX2")
{
}

update
{
if(settings["GV_PAL"])
{
vars.Hub1State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20285E74 - modules[0].BaseAddress.ToInt32());
vars.W1State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286244 - modules[0].BaseAddress.ToInt32());
vars.Hub2State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x202862C0 - modules[0].BaseAddress.ToInt32());
vars.W2State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286690 - modules[0].BaseAddress.ToInt32());
vars.DSP = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286694 - modules[0].BaseAddress.ToInt32());
vars.LotB = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286784 - modules[0].BaseAddress.ToInt32());
vars.AGU = memory.ReadValue<byte>(modules.First().BaseAddress + 0x202867FC - modules[0].BaseAddress.ToInt32());
vars.Fish = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286874 - modules[0].BaseAddress.ToInt32());
vars.DiD = memory.ReadValue<byte>(modules.First().BaseAddress + 0x202868EC - modules[0].BaseAddress.ToInt32());
vars.AGV = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286964 - modules[0].BaseAddress.ToInt32());
vars.Chickens = memory.ReadValue<byte>(modules.First().BaseAddress + 0x202869DC - modules[0].BaseAddress.ToInt32());
vars.W3State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286ADC - modules[0].BaseAddress.ToInt32());
vars.Hub4State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286B58 - modules[0].BaseAddress.ToInt32());
vars.W4State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286F28 - modules[0].BaseAddress.ToInt32());
vars.Burning = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2028701C - modules[0].BaseAddress.ToInt32());
vars.ADR = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20287094 - modules[0].BaseAddress.ToInt32());
vars.ATT = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20287184 - modules[0].BaseAddress.ToInt32());
vars.Peril = memory.ReadValue<byte>(modules.First().BaseAddress + 0x202871FC - modules[0].BaseAddress.ToInt32());
vars.ASR = memory.ReadValue<byte>(modules.First().BaseAddress + 0x202872EC - modules[0].BaseAddress.ToInt32());
vars.W5State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20287374 - modules[0].BaseAddress.ToInt32());
vars.transitionTrigger = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027f710 - modules[0].BaseAddress.ToInt32());
vars.Lives = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20287380 - modules[0].BaseAddress.ToInt32());
vars.Charms = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20287384 - modules[0].BaseAddress.ToInt32());
vars.Coins = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20287388 - modules[0].BaseAddress.ToInt32());
}

else if(settings["GV_NTSC"])
{
vars.Hub1State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027C6F4 -  modules[0].BaseAddress.ToInt32());
vars.W1State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CAC4 - modules[0].BaseAddress.ToInt32());
vars.Hub2State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CB40 - modules[0].BaseAddress.ToInt32());
vars.W2State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CF10 - modules[0].BaseAddress.ToInt32());
vars.DSP = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CF14 - modules[0].BaseAddress.ToInt32());
vars.LotB = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D004 - modules[0].BaseAddress.ToInt32());
vars.AGU = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D07C - modules[0].BaseAddress.ToInt32());
vars.Fish = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D0F4 - modules[0].BaseAddress.ToInt32());
vars.DiD = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D16C - modules[0].BaseAddress.ToInt32());
vars.AGV = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D1E4 - modules[0].BaseAddress.ToInt32());
vars.Chickens = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D25C - modules[0].BaseAddress.ToInt32());
vars.W3State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D35C - modules[0].BaseAddress.ToInt32());
vars.Hub4State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D3D8 - modules[0].BaseAddress.ToInt32());
vars.W4State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D7A8 - modules[0].BaseAddress.ToInt32());
vars.Burning = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D89C - modules[0].BaseAddress.ToInt32());
vars.ADR = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D914 - modules[0].BaseAddress.ToInt32());
vars.ATT = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DA04 - modules[0].BaseAddress.ToInt32());
vars.Peril = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DA7C - modules[0].BaseAddress.ToInt32());
vars.ASR = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DB6C - modules[0].BaseAddress.ToInt32());
vars.W5State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DBF4 - modules[0].BaseAddress.ToInt32());
vars.transitionTrigger = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20275F90 - modules[0].BaseAddress.ToInt32());
vars.Lives = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DC00 - modules[0].BaseAddress.ToInt32());
vars.Charms = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DC04 - modules[0].BaseAddress.ToInt32());
vars.Coins = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DC08 - modules[0].BaseAddress.ToInt32());	
}

}

init
{
vars.framerate = 60;
vars.RunStart = 0;
vars.Offset = 0x0;

vars.Hub1State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027C6F4 - modules[0].BaseAddress.ToInt32());
vars.W1State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CAC4 - modules[0].BaseAddress.ToInt32());
vars.Hub2State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CB40 - modules[0].BaseAddress.ToInt32());
vars.W2State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CF10 - modules[0].BaseAddress.ToInt32());
vars.DSP = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027CF14 - modules[0].BaseAddress.ToInt32());
vars.LotB = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D004 - modules[0].BaseAddress.ToInt32());
vars.AGU = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D07C - modules[0].BaseAddress.ToInt32());
vars.Fish = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D0F4 - modules[0].BaseAddress.ToInt32());
vars.DiD = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D16C - modules[0].BaseAddress.ToInt32());
vars.AGV = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D1E4 - modules[0].BaseAddress.ToInt32());
vars.Chickens = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D25C - modules[0].BaseAddress.ToInt32());
vars.W3State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D35C - modules[0].BaseAddress.ToInt32());
vars.Hub4State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20286B58 - modules[0].BaseAddress.ToInt32());
vars.W4State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D7A8 - modules[0].BaseAddress.ToInt32());
vars.Burning = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D89C - modules[0].BaseAddress.ToInt32());
vars.ADR = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027D914 - modules[0].BaseAddress.ToInt32());
vars.ATT = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DA04 - modules[0].BaseAddress.ToInt32());
vars.Peril = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DA7C - modules[0].BaseAddress.ToInt32());
vars.ASR = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DB6C - modules[0].BaseAddress.ToInt32());
vars.W5State = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DBF4 - modules[0].BaseAddress.ToInt32());
vars.frameCounter = memory.ReadValue<byte>(modules.First().BaseAddress + 0x118578C - modules[0].BaseAddress.ToInt32());
vars.transitionTrigger = memory.ReadValue<byte>(modules.First().BaseAddress + 0x20275F90 - modules[0].BaseAddress.ToInt32());
vars.Lives = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DC00 - modules[0].BaseAddress.ToInt32());
vars.Charms = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DC04 - modules[0].BaseAddress.ToInt32());
vars.Coins = memory.ReadValue<byte>(modules.First().BaseAddress + 0x2027DC08 - modules[0].BaseAddress.ToInt32());

vars.tempSet= 0;
vars.SplitReady = 0;

vars.ASASplit = 0;
vars.RaleighSplit = 0;

vars.ARSSplit = 0;
vars.MuggshotSplit = 0;

vars.DSPSplit = 0;
vars.LotbSplit = 0;
vars.AGUSplit = 0;
vars.FishSplit = 0;
vars.DiDSplit = 0;
vars.AGVSplit = 0;
vars.ChickensSplit = 0;
vars.RubySplit = 0;

vars.APASplit = 0;
vars.PandaSplit = 0;

vars.AHPSplit = 0;
vars.BurningSplit = 0;
vars.ADRSplit = 0;
vars.ATTSplit = 0;
vars.PerilSplit = 0;
vars.ClockwerkSplit = 0;
}

split
{
	if(vars.ASASplit == 0)
	{
		if(vars.Hub1State == 1)
		{
			vars.ASASplit = 1;
			print("ASA Split");
			return true;
		}
	}
	if(vars.RaleighSplit == 0)
	{
		if(vars.W1State == 41)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.RaleighSplit = 1;
			print("Raleigh Split");
					return true;
				}
			}
		}
	}	
	if(vars.ARSSplit == 0)
	{
		if(vars.Hub2State == 1)
		{
			vars.ARSSplit = 1;
			print("ARS Split");
			return true;
		}
	}
	if(vars.MuggshotSplit == 0)
	{
		if(vars.W2State == 33)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.MuggshotSplit = 1;
			print("Muggshot Split");
					return true;
				}
			}
		}
	}
	
	if(vars.DSPSplit == 0)
	{
		if(vars.DSP == 3)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.DSPSplit = 1;
			print("DSP Split");
					return true;
				}
			}
		}
	}
	if(vars.LotbSplit == 0)
	{
		if(vars.LotB == 3)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.LotbSplit = 1;
			print("LotB Split");
					return true;
				}
			}
		}
	}
	if(vars.FishSplit == 0)
	{
		if(vars.Fish == 3)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.FishSplit = 1;
			print("Fish Split");
					return true;
				}
			}
		}
	}
	if(vars.AGUSplit == 0)
	{
		if(vars.AGU == 3)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.AGUSplit = 1;
			print("AGU Split");
					return true;
				}
			}
		}
	}
	if(vars.DiDSplit == 0)
	{
		if(vars.DiD == 3)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.DiDSplit = 1;
			print("DiD Split");
					return true;
				}
			}
		}
	}
	if(vars.AGVSplit == 0)
	{
		if(vars.AGV == 3)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.AGVSplit = 1;
			print("AGV Split");
					return true;
				}
			}
		}
	}
	if(vars.ChickensSplit == 0)
	{
		if(vars.Chickens == 3)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.ChickensSplit = 1;
			print("Chickens Split");
					return true;
				}
			}
		}
	}
	if(vars.RubySplit == 0)
	{
		if(vars.W3State == 43) 
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					if(vars.tempSet == 1)
					{
						vars.SplitReady = 0;
						vars.RubySplit = 1;
			print("Ruby Split");
						return true;
					}
					if(vars.tempSet == 0)
						{
						vars.SplitReady = 0;
						vars.tempSet = 1;
						}
				}
			}
		}
	}
	if(vars.APASplit == 0)
	{
		if(vars.Hub4State == 1)
		{
			vars.APASplit = 1;
			print("APA Split");
			return true;
		}
	}
	if(vars.PandaSplit == 0)
	{
		if(vars.W4State == 33)
		{
			if(vars.transitionTrigger == 1)
			{
				vars.SplitReady = 1;
			}
			
			if(vars.transitionTrigger == 0)
			{
				if(vars.SplitReady == 1)
				{
					vars.SplitReady = 0;
					vars.PandaSplit = 1;
			print("Panda Split");
					return true;
				}
			}
		}
	}
	if(vars.AHPSplit == 0)
	{
		if(vars.Burning == 1)
		{
			vars.AHPSplit = 1;
			print("AHP Split");
			return true;
		}
	}
	if(vars.BurningSplit == 0)
	{
		if(vars.ADR == 1)
		{
			vars.BurningSplit = 1;
			print("Burning Split");
			return true;
		}
	}
	if(vars.ADRSplit == 0)
	{
		if(vars.ATT == 1)
		{
			vars.ADRSplit = 1;
			print("ADR Split");
			return true;
		}
	}
	if(vars.ATTSplit == 0)
	{
		if(vars.Peril == 1)
		{
			vars.ATTSplit = 1;
			print("ATT Split");
			return true;
		}
	}
	if(vars.PerilSplit == 0)
	{
		if(vars.ASR == 1)
		{
			vars.PerilSplit = 1;
			print("Peril Split");
			return true;
		}
	}
	if(vars.ClockwerkSplit == 0)
	{
		if(vars.W5State == 33)
		{
			vars.ClockwerkSplit = 1;
			print("Clockwerk Split");
			return true;
			
		}
	}	
}

start
{
vars.tempSet= 0;
vars.SplitReady = 0;

vars.ASASplit = 0;
vars.RaleighSplit = 0;

vars.ARSSplit = 0;
vars.MuggshotSplit = 0;

vars.DSPSplit = 0;
vars.LotbSplit = 0;
vars.AGUSplit = 0;
vars.FishSplit = 0;
vars.DiDSplit = 0;
vars.AGVSplit = 0;
vars.ChickensSplit = 0;
vars.RubySplit = 0;

vars.APASplit = 0;
vars.PandaSplit = 0;

vars.AHPSplit = 0;
vars.BurningSplit = 0;
vars.ADRSplit = 0;
vars.ATTSplit = 0;
vars.PerilSplit = 0;
vars.ClockwerkSplit = 0;

if(vars.Coins == 0)
{
	if(vars.Lives == 5)
	{
			if(vars.Charms == 0)
			{
				vars.RunStart = 1;
				return vars.transitionTrigger			== 1;
			} 
	}
}
}

reset
{
if(vars.RunStart == 1)
	{
	if(vars.Lives != 5)
		{
			vars.RunStart = 0;
			return true;
		}
	if(vars.Charms != 0)
		{
			vars.RunStart = 0;
			return true;
		}
	if(vars.Coins != 0)
		{
			vars.RunStart = 0;
			return true;
		}
	if(vars.transitionTrigger == 0)
		{
			vars.RunStart = 0;
		}
	}
}

startup
{
settings.Add("GameVersion", true,"Game Version");
settings.Add("GV_NTSC", false,"NTSC","GameVersion");
settings.Add("GV_PAL", false,"PAL","GameVersion");
}
