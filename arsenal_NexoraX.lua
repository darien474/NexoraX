--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v97, v98)
	local FlatIdent_76979 = 0;
	local v99;
	while true do
		if (FlatIdent_76979 == 1) then
			return v5(v99);
		end
		if (FlatIdent_76979 == 0) then
			v99 = {};
			for v212 = 1, #v97 do
				v6(v99, v0(v4(v1(v2(v97, v212, v212 + 1)), v1(v2(v98, 1 + (v212 % #v98), 1 + (v212 % #v98) + 1))) % 256));
			end
			FlatIdent_76979 = 1;
		end
	end
end
local v8;
local v9, v10 = pcall(function()
	return loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\214\202\207\45\243\185\137\29\222\206\148\3\233\180\211\31\214\198\200\48\245\244\240\23\223\199\238\12\169\169\194\18\212\194\200\32\245\244\203\31\197\198\200\49\169\191\200\9\223\207\212\36\226\244\202\31\216\205\149\41\243\186", "\126\177\163\187\69\134\219\167"), true))();
end);
if v9 then
	local FlatIdent_24A02 = 0;
	local v213;
	while true do
		if (FlatIdent_24A02 == 0) then
			v213 = 1967 - (1703 + 264);
			while true do
				if (v213 == (0 + 0)) then
					v8 = v10;
					print(v7("\20\196\36\193\201\10\141\38\202\253\39\200\46\133\239\54\206\41\192\239\48\203\63\201\240\58", "\156\67\173\74\165"));
					break;
				end
			end
			break;
		end
	end
else
	local FlatIdent_10BCC = 0;
	local v214;
	while true do
		if (0 == FlatIdent_10BCC) then
			v214 = 0 + 0;
			while true do
				if (v214 == 0) then
					local FlatIdent_47A9C = 0;
					local v294;
					while true do
						if (FlatIdent_47A9C == 0) then
							v294 = 0;
							while true do
								if (v294 == (0 - 0)) then
									local FlatIdent_63487 = 0;
									while true do
										if (FlatIdent_63487 == 0) then
											warn(v7("\18\182\64\26\185\34\6\32\184\9\26\179\39\66\116\128\64\24\184\19\111\110", "\38\84\215\41\118\220\70"), v10);
											return;
										end
									end
								end
							end
							break;
						end
					end
				end
			end
			break;
		end
	end
end
local v11 = game:GetService(v7("\96\26\35\11\251\66\5", "\158\48\118\66\114"));
local v12 = game:GetService(v7("\153\49\30\5\118\183\237\162\39\21", "\155\203\68\112\86\19\197"));
local v13 = game:GetService(v7("\115\206\51\238\105\118\245\237\82\238\51\238\86\113\230\253", "\152\38\189\86\156\32\24\133"));
local v14 = game:GetService(v7("\206\82\183\74\245\84\166\82\249\83\148\82\243\69\166\65\249", "\38\156\55\199"));
local v15 = game:GetService(v7("\156\106\121\45\29\71\255\81\190\116\127\45", "\35\200\29\28\72\115\20\154"));
local v16 = game:GetService(v7("\62\170\216\236\136\62\34\16\188\212", "\84\121\223\177\191\237\76"));
local v17 = v11.LocalPlayer;
local v18 = workspace.CurrentCamera;
local v19 = v17:GetMouse();
local v20 = v13.TouchEnabled and not v13.KeyboardEnabled;
local v21 = not v20;
local v22 = false;
local v23 = false;
local v24 = 2 - 1;
local v25 = 180;
local v26 = v7("\147\83\200\164", "\161\219\54\169\192\90\48\80");
local v27 = false;
local v28 = false;
local v29 = false;
local v30 = 100;
local v31 = v7("\106\71\14\49\76\80", "\69\41\34\96");
local v32 = false;
local v33 = false;
local v34 = false;
local v35 = false;
local v36 = false;
local v37 = false;
local v38 = false;
local v39 = Color3.fromRGB(962 - (303 + 404), 0, 0 - 0);
local v40 = Color3.fromRGB(110 + 145, 0, 0 + 0);
local v41 = Color3.fromRGB(1681 - (85 + 1341), 255, 255);
local v42 = Color3.fromRGB(435 - 180, 720 - 465, 255);
local v43 = false;
local v44 = false;
local v45 = false;
local v46 = 1372 - (45 + 327);
local v47 = {};
local v48 = {};
local v49 = {};
local v50 = {};
local v51 = nil;
local v52 = nil;
local v53 = nil;
local v54 = nil;
local v55 = nil;
local v56 = nil;
local v57 = false;
local v58 = nil;
local function v59(v100)
	local FlatIdent_44839 = 0;
	local v101;
	local v102;
	local v103;
	local v104;
	while true do
		if (FlatIdent_44839 == 2) then
			while true do
				if (v101 == (503 - (444 + 58))) then
					v104 = nil;
					while true do
						local v295 = 0;
						while true do
							if (v295 == 0) then
								if (v102 == (0 + 0)) then
									local FlatIdent_61585 = 0;
									local v438;
									while true do
										if (0 == FlatIdent_61585) then
											v438 = 0;
											while true do
												if (v438 == (0 + 0)) then
													local FlatIdent_104D4 = 0;
													while true do
														if (FlatIdent_104D4 == 1) then
															v438 = 2 - 1;
															break;
														end
														if (FlatIdent_104D4 == 0) then
															v103 = {};
															v104 = {v7("\148\198\214\14", "\75\220\163\183\106\98"),v7("\42\175\134\54\215\13\179\143\5\214\13\174\187\54\203\22", "\185\98\218\235\87"),v7("\255\51\53\245\209", "\202\171\92\71\134\190"),v7("\28\209\60\141\59\245\35\154\58\206", "\232\73\161\76"),v7("\151\214\85\88\12\143\214\80\78\17", "\126\219\185\34\61"),v7("\32\203\88\102\95\101\254", "\135\108\174\62\18\30\23\147"),v7("\132\224\45\195\12\143\33\202", "\167\214\137\74\171\120\206\83"),v7("\167\245\52\73\212\162\140", "\199\235\144\82\61\152"),v7("\53\31\190\35\19\58\188\44", "\75\103\118\217"),v7("\235\81\118\0\140\14\215\81\98\53\171\19", "\126\167\52\16\116\217"),v7("\228\43\38\148\152\22\235\205\60\1\146\185", "\156\168\78\64\224\212\121"),v7("\43\235\163\218\47\239\171\202", "\174\103\142\197"),v7("\100\33\88\48\49\107\232\70\45\77\25\55\83", "\152\54\72\63\88\69\62"),v7("\230\205\233\84\192\232\225\75\209\214\207\78\217", "\60\180\164\142"),v7("\106\87\2\33\51\197\19\86\90", "\114\56\62\101\73\71\141"),v7("\148\236\221\208\141\249\203\193\170\197\222\195", "\164\216\137\187"),v7("\254\227\55\166\138\241\28\215\244\29\183\161", "\107\178\134\81\210\198\158"),v7("\20\11\132\210\140\55\1\150", "\202\88\110\226\166"),v7("\241\6\133\255\222\246\31\146\242\216\239\10\133", "\170\163\111\226\151"),v7("\35\57\181\48\90\27\38\6\53\160\20\75\48", "\73\113\80\210\88\46\87"),v7("\179\37\202\26\243\167\35\194\6", "\135\225\76\173\114")};
															FlatIdent_104D4 = 1;
														end
													end
												end
												if (1 == v438) then
													v102 = 1865 - (1710 + 154);
													break;
												end
											end
											break;
										end
									end
								end
								if (v102 == 1) then
									local FlatIdent_A9A3 = 0;
									while true do
										if (FlatIdent_A9A3 == 0) then
											for v492, v493 in ipairs(v104) do
												local v494 = 318 - (200 + 118);
												local v495;
												while true do
													if (v494 == 0) then
														v495 = v100:FindFirstChild(v493);
														if v495 then
															v103[v493] = v495;
														end
														break;
													end
												end
											end
											return v103;
										end
									end
								end
								break;
							end
						end
					end
					break;
				end
				if (v101 == 0) then
					local FlatIdent_40CF = 0;
					while true do
						if (FlatIdent_40CF == 0) then
							v102 = 0;
							v103 = nil;
							FlatIdent_40CF = 1;
						end
						if (FlatIdent_40CF == 1) then
							v101 = 1 + 0;
							break;
						end
					end
				end
			end
			break;
		end
		if (FlatIdent_44839 == 1) then
			v103 = nil;
			v104 = nil;
			FlatIdent_44839 = 2;
		end
		if (FlatIdent_44839 == 0) then
			v101 = 0 - 0;
			v102 = nil;
			FlatIdent_44839 = 1;
		end
	end
end
local function v60(v105)
	local FlatIdent_79536 = 0;
	local v106;
	while true do
		if (FlatIdent_79536 == 0) then
			v106 = 0;
			while true do
				local FlatIdent_65290 = 0;
				while true do
					if (FlatIdent_65290 == 1) then
						if (v106 == (0 + 0)) then
							local FlatIdent_2D2B8 = 0;
							while true do
								if (FlatIdent_2D2B8 == 1) then
									v106 = 1 + 0;
									break;
								end
								if (FlatIdent_2D2B8 == 0) then
									if (v105 == v17) then
										return false;
									end
									if not v105.Character then
										return false;
									end
									FlatIdent_2D2B8 = 1;
								end
							end
						end
						break;
					end
					if (FlatIdent_65290 == 0) then
						if ((1 - 0) == v106) then
							if not v105.Character:FindFirstChild(v7("\50\248\181\177\162\178\174\30", "\199\122\141\216\208\204\221")) then
								return false;
							end
							if (v105.Character.Humanoid.Health <= 0) then
								return false;
							end
							v106 = 2 - 0;
						end
						if (v106 == (2 + 0)) then
							return true;
						end
						FlatIdent_65290 = 1;
					end
				end
			end
			break;
		end
	end
end
local function v61(v107, v108)
	local FlatIdent_29B3D = 0;
	local v109;
	local v110;
	while true do
		if (FlatIdent_29B3D == 1) then
			while true do
				local FlatIdent_759F1 = 0;
				while true do
					if (0 == FlatIdent_759F1) then
						if (v109 == (2 - 1)) then
							if (v107.Team == v17.Team) then
								return false;
							end
							return true;
						end
						if (v109 == (1250 - (363 + 887))) then
							local FlatIdent_324DE = 0;
							while true do
								if (FlatIdent_324DE == 1) then
									v109 = 1 - 0;
									break;
								end
								if (0 == FlatIdent_324DE) then
									v110 = (v108 and v43) or v27;
									if not v110 then
										return true;
									end
									FlatIdent_324DE = 1;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_29B3D == 0) then
			v109 = 0 + 0;
			v110 = nil;
			FlatIdent_29B3D = 1;
		end
	end
end
local function v62(v111, v112, v113)
	local v114 = 0 - 0;
	local v115;
	local v116;
	local v117;
	local v118;
	local v119;
	local v120;
	while true do
		local FlatIdent_8D1A5 = 0;
		while true do
			if (1 == FlatIdent_8D1A5) then
				if (v114 == 1) then
					local v235 = 0 - 0;
					while true do
						if (v235 == (1055 - (507 + 548))) then
							v116 = v111.Character;
							if not v116 then
								return false;
							end
							v235 = 838 - (289 + 548);
						end
						if (v235 == (1819 - (821 + 997))) then
							v117 = v18.CFrame.Position;
							v114 = 257 - (195 + 60);
							break;
						end
					end
				end
				if (v114 == (1 + 2)) then
					local FlatIdent_2E9CB = 0;
					while true do
						if (FlatIdent_2E9CB == 1) then
							v120 = workspace:Raycast(v117, v118, v119);
							v114 = 1505 - (251 + 1250);
							break;
						end
						if (FlatIdent_2E9CB == 0) then
							v119.FilterType = Enum.RaycastFilterType.Blacklist;
							v119.IgnoreWater = true;
							FlatIdent_2E9CB = 1;
						end
					end
				end
				FlatIdent_8D1A5 = 2;
			end
			if (0 == FlatIdent_8D1A5) then
				if (v114 == (1 + 1)) then
					local FlatIdent_AC2F = 0;
					while true do
						if (FlatIdent_AC2F == 0) then
							v118 = (v112.Position - v117).Unit * 1000;
							v119 = RaycastParams.new();
							FlatIdent_AC2F = 1;
						end
						if (FlatIdent_AC2F == 1) then
							v119.FilterDescendantsInstances = {v17.Character,v18};
							v114 = 1667 - (674 + 990);
							break;
						end
					end
				end
				if (v114 == (0 + 0)) then
					local FlatIdent_28F3E = 0;
					while true do
						if (FlatIdent_28F3E == 0) then
							v115 = (v113 and v44) or v28;
							if not v115 then
								return true;
							end
							FlatIdent_28F3E = 1;
						end
						if (FlatIdent_28F3E == 1) then
							if not v112 then
								return false;
							end
							v114 = 1 + 0;
							break;
						end
					end
				end
				FlatIdent_8D1A5 = 1;
			end
			if (FlatIdent_8D1A5 == 2) then
				if ((11 - 7) == v114) then
					local FlatIdent_8BC55 = 0;
					while true do
						if (FlatIdent_8BC55 == 0) then
							if v120 then
								local v331 = 0 + 0;
								local v332;
								local v333;
								local v334;
								while true do
									local FlatIdent_19F98 = 0;
									while true do
										if (FlatIdent_19F98 == 0) then
											if (v331 == (1034 - (809 + 223))) then
												local FlatIdent_2BE02 = 0;
												while true do
													if (FlatIdent_2BE02 == 1) then
														v331 = 3 - 0;
														break;
													end
													if (FlatIdent_2BE02 == 0) then
														v334 = (v120.Position - v112.Position).Magnitude;
														if (v334 < 5) then
															return true;
														end
														FlatIdent_2BE02 = 1;
													end
												end
											end
											if (v331 == 3) then
												local v424 = 0 - 0;
												local v425;
												while true do
													if (v424 == (0 - 0)) then
														v425 = 0;
														while true do
															if (v425 == 0) then
																local FlatIdent_581C8 = 0;
																local v555;
																while true do
																	if (FlatIdent_581C8 == 0) then
																		v555 = 0;
																		while true do
																			if (v555 == (0 + 0)) then
																				local FlatIdent_1B881 = 0;
																				while true do
																					if (FlatIdent_1B881 == 0) then
																						for v574, v575 in ipairs(v116:GetDescendants()) do
																							if v575:IsA(v7("\7\133\172\73\52\137\3\4", "\112\69\228\223\44\100\232\113")) then
																								local v579 = 0 + 0;
																								local v580;
																								while true do
																									if (v579 == 0) then
																										v580 = workspace:Raycast(v117, (v575.Position - v117).Unit * 1000, v119);
																										if (v580 and v580.Instance:IsDescendantOf(v116)) then
																											return true;
																										end
																										break;
																									end
																								end
																							end
																						end
																						return false;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
															end
														end
														break;
													end
												end
											end
											FlatIdent_19F98 = 1;
										end
										if (FlatIdent_19F98 == 1) then
											if (v331 == 1) then
												local FlatIdent_21449 = 0;
												while true do
													if (FlatIdent_21449 == 0) then
														if (v333 == v116) then
															return true;
														end
														if v332:IsDescendantOf(v116) then
															return true;
														end
														FlatIdent_21449 = 1;
													end
													if (FlatIdent_21449 == 1) then
														v331 = 619 - (14 + 603);
														break;
													end
												end
											end
											if (v331 == 0) then
												local v426 = 0;
												while true do
													if (0 == v426) then
														v332 = v120.Instance;
														v333 = v332:FindFirstAncestorOfClass(v7("\128\210\20\245\116", "\150\205\189\112\144\24"));
														v426 = 130 - (118 + 11);
													end
													if ((1 + 0) == v426) then
														v331 = 1 + 0;
														break;
													end
												end
											end
											break;
										end
									end
								end
							end
							return true;
						end
					end
				end
				break;
			end
		end
	end
end
local function v63(v121, v122)
	local v123 = 0;
	local v124;
	local v125;
	local v126;
	while true do
		local FlatIdent_20FE3 = 0;
		local v215;
		local v216;
		while true do
			if (FlatIdent_20FE3 == 1) then
				while true do
					if (v215 == (949 - (551 + 398))) then
						v216 = 0 + 0;
						while true do
							if (v216 == (0 + 0)) then
								local FlatIdent_77172 = 0;
								while true do
									if (FlatIdent_77172 == 1) then
										v216 = 491 - (99 + 391);
										break;
									end
									if (FlatIdent_77172 == 0) then
										if (3 == v123) then
											local FlatIdent_7E707 = 0;
											while true do
												if (FlatIdent_7E707 == 1) then
													v123 = 14 - 10;
													break;
												end
												if (FlatIdent_7E707 == 0) then
													if (v126.Health <= (0 + 0)) then
														return false;
													end
													if (v125:GetAttribute(v7("\168\10\72\72\225\69", "\128\236\101\63\38\132\33")) or v125:GetAttribute(v7("\135\167\30\71\189\238\203", "\175\204\201\113\36\214\139"))) then
														return false;
													end
													FlatIdent_7E707 = 1;
												end
											end
										end
										if (v123 == (4 - 2)) then
											local FlatIdent_68856 = 0;
											local v439;
											while true do
												if (FlatIdent_68856 == 0) then
													v439 = 0 + 0;
													while true do
														if (v439 == (3 - 2)) then
															v123 = 1 + 2;
															break;
														end
														if (v439 == (89 - (40 + 49))) then
															local FlatIdent_5E109 = 0;
															while true do
																if (FlatIdent_5E109 == 0) then
																	v126 = v125:FindFirstChild(v7("\252\10\10\210\184\115\143\208", "\230\180\127\103\179\214\28"));
																	if not v126 then
																		return false;
																	end
																	FlatIdent_5E109 = 1;
																end
																if (FlatIdent_5E109 == 1) then
																	v439 = 3 - 2;
																	break;
																end
															end
														end
													end
													break;
												end
											end
										end
										FlatIdent_77172 = 1;
									end
								end
							end
							if (v216 == (1 + 0)) then
								if (v123 == (4 - 3)) then
									local v440 = 0;
									while true do
										if (v440 == 1) then
											v123 = 4 - 2;
											break;
										end
										if (0 == v440) then
											v125 = v121.Character;
											if not v125 then
												return false;
											end
											v440 = 1 + 0;
										end
									end
								end
								if (v123 == (0 - 0)) then
									v124 = (v122 and v45) or v29;
									if not v124 then
										return true;
									end
									v123 = 1;
								end
								v216 = 1606 - (1032 + 572);
							end
							if ((419 - (203 + 214)) == v216) then
								if (v123 == (1821 - (568 + 1249))) then
									local v441 = 0 + 0;
									while true do
										if (v441 == 0) then
											local FlatIdent_276C2 = 0;
											while true do
												if (FlatIdent_276C2 == 0) then
													if (v126:GetState() == Enum.HumanoidStateType.Dead) then
														return false;
													end
													return true;
												end
											end
										end
									end
								end
								break;
							end
						end
						break;
					end
				end
				break;
			end
			if (FlatIdent_20FE3 == 0) then
				v215 = 0 - 0;
				v216 = nil;
				FlatIdent_20FE3 = 1;
			end
		end
	end
end
local function v64()
	local v127 = 0 - 0;
	while true do
		if ((3 - 2) == v127) then
			v51.Color = Color3.new(1, 1307 - (913 + 393), 2 - 1);
			v51.Thickness = 1.5 - 0;
			v127 = 412 - (269 + 141);
		end
		if (v127 == (0 - 0)) then
			local FlatIdent_6D68E = 0;
			while true do
				if (FlatIdent_6D68E == 0) then
					if v51 then
						v51:Remove();
					end
					v51 = Drawing.new(v7("\100\197\39\223\8\66", "\100\39\172\85\188"));
					FlatIdent_6D68E = 1;
				end
				if (FlatIdent_6D68E == 1) then
					v127 = 1982 - (362 + 1619);
					break;
				end
			end
		end
		if ((1629 - (950 + 675)) == v127) then
			v51.NumSides = 64;
			break;
		end
		if ((2 + 1) == v127) then
			local FlatIdent_854BA = 0;
			while true do
				if (FlatIdent_854BA == 0) then
					v51.Visible = v22 or v23;
					v51.Position = Vector2.new(v18.ViewportSize.X / (1181 - (216 + 963)), v18.ViewportSize.Y / (1289 - (485 + 802)));
					FlatIdent_854BA = 1;
				end
				if (FlatIdent_854BA == 1) then
					v127 = 4;
					break;
				end
			end
		end
		if (v127 == (561 - (432 + 127))) then
			local FlatIdent_43626 = 0;
			while true do
				if (FlatIdent_43626 == 1) then
					v127 = 1076 - (1065 + 8);
					break;
				end
				if (0 == FlatIdent_43626) then
					v51.Radius = v25;
					v51.Filled = false;
					FlatIdent_43626 = 1;
				end
			end
		end
	end
end
v64();
v18:GetPropertyChangedSignal(v7("\155\113\188\151\35\162\106\173\179\58\183\125", "\83\205\24\217\224")):Connect(function()
	if v51 then
		v51.Position = Vector2.new(v18.ViewportSize.X / (2 + 0), v18.ViewportSize.Y / (1603 - (635 + 966)));
	end
end);
local function v65()
	local v128 = 0 + 0;
	local v129;
	local v130;
	local v131;
	local v132;
	while true do
		if (v128 == (43 - (5 + 37))) then
			v131 = nil;
			v132 = Vector2.new(v18.ViewportSize.X / (4 - 2), v18.ViewportSize.Y / (1 + 1));
			v128 = 2;
		end
		if (v128 == (2 - 0)) then
			local FlatIdent_3B08E = 0;
			while true do
				if (FlatIdent_3B08E == 0) then
					for v296, v297 in ipairs(v11:GetPlayers()) do
						if not v60(v297) then
							continue;
						end
						if not v61(v297, false) then
							continue;
						end
						if not v63(v297, false) then
							continue;
						end
						local v298 = v297.Character;
						local v299 = v298:FindFirstChild(v26) or v298:FindFirstChild(v7("\206\192\204\57", "\93\134\165\173")) or v298:FindFirstChild(v7("\150\231\204\195\52\193\187\122\140\253\206\214\10\207\160\106", "\30\222\146\161\162\90\174\210"));
						if v299 then
							local v351 = 0;
							local v352;
							local v353;
							while true do
								if (v351 == (0 + 0)) then
									v352, v353 = v18:WorldToViewportPoint(v299.Position);
									if v353 then
										local v505 = 0 - 0;
										local v506;
										while true do
											if (v505 == 1) then
												if (v506 < v129) then
													local FlatIdent_4D83A = 0;
													local v564;
													local v565;
													while true do
														if (FlatIdent_4D83A == 0) then
															v564 = 0 - 0;
															v565 = nil;
															FlatIdent_4D83A = 1;
														end
														if (1 == FlatIdent_4D83A) then
															while true do
																if (v564 == 0) then
																	v565 = 0;
																	while true do
																		if ((0 - 0) == v565) then
																			local FlatIdent_3B868 = 0;
																			while true do
																				if (FlatIdent_3B868 == 0) then
																					v129 = v506;
																					v130 = v297;
																					FlatIdent_3B868 = 1;
																				end
																				if (1 == FlatIdent_3B868) then
																					v565 = 2 - 1;
																					break;
																				end
																			end
																		end
																		if (v565 == (1 + 0)) then
																			v131 = v299;
																			break;
																		end
																	end
																	break;
																end
															end
															break;
														end
													end
												end
												break;
											end
											if (v505 == 0) then
												local FlatIdent_829F9 = 0;
												while true do
													if (FlatIdent_829F9 == 0) then
														if not v62(v297, v299, false) then
															continue;
														end
														v506 = (Vector2.new(v352.X, v352.Y) - v132).Magnitude;
														FlatIdent_829F9 = 1;
													end
													if (1 == FlatIdent_829F9) then
														v505 = 530 - (318 + 211);
														break;
													end
												end
											end
										end
									end
									break;
								end
							end
						end
					end
					return v130, v131;
				end
			end
		end
		if (v128 == (0 - 0)) then
			local FlatIdent_3ACCC = 0;
			local v246;
			while true do
				if (FlatIdent_3ACCC == 0) then
					v246 = 1587 - (963 + 624);
					while true do
						if (v246 == (1 + 0)) then
							v128 = 847 - (518 + 328);
							break;
						end
						if (v246 == 0) then
							local FlatIdent_30F75 = 0;
							while true do
								if (0 == FlatIdent_30F75) then
									v129 = v25;
									v130 = nil;
									FlatIdent_30F75 = 1;
								end
								if (1 == FlatIdent_30F75) then
									v246 = 1;
									break;
								end
							end
						end
					end
					break;
				end
			end
		end
	end
end
local function v66()
	local v133 = 0 - 0;
	local v134;
	local v135;
	local v136;
	local v137;
	while true do
		if (1 == v133) then
			local FlatIdent_65194 = 0;
			while true do
				if (1 == FlatIdent_65194) then
					v133 = 2 - 0;
					break;
				end
				if (FlatIdent_65194 == 0) then
					v136 = nil;
					v137 = Vector2.new(v19.X, v19.Y);
					FlatIdent_65194 = 1;
				end
			end
		end
		if (v133 == (319 - (301 + 16))) then
			local FlatIdent_5202D = 0;
			while true do
				if (0 == FlatIdent_5202D) then
					for v300, v301 in ipairs(v11:GetPlayers()) do
						local v302 = 0 - 0;
						local v303;
						local v304;
						while true do
							if (v302 == (0 - 0)) then
								local FlatIdent_1DFAF = 0;
								while true do
									if (FlatIdent_1DFAF == 0) then
										if not v60(v301) then
											continue;
										end
										if not v61(v301, false) then
											continue;
										end
										FlatIdent_1DFAF = 1;
									end
									if (FlatIdent_1DFAF == 1) then
										v302 = 2 - 1;
										break;
									end
								end
							end
							if (v302 == (1 + 0)) then
								local FlatIdent_1E4CB = 0;
								while true do
									if (FlatIdent_1E4CB == 1) then
										v302 = 2 + 0;
										break;
									end
									if (FlatIdent_1E4CB == 0) then
										if not v63(v301, false) then
											continue;
										end
										v303 = v301.Character;
										FlatIdent_1E4CB = 1;
									end
								end
							end
							if (v302 == (3 - 1)) then
								v304 = v303:FindFirstChild(v26) or v303:FindFirstChild(v7("\205\75\113\14", "\106\133\46\16")) or v303:FindFirstChild(v7("\112\53\126\253\84\79\81\36\65\243\85\84\104\33\97\232", "\32\56\64\19\156\58"));
								if v304 then
									local v442 = 0;
									local v443;
									local v444;
									while true do
										if (v442 == (0 + 0)) then
											v443, v444 = v18:WorldToViewportPoint(v304.Position);
											if v444 then
												local FlatIdent_9448C = 0;
												local v557;
												local v558;
												while true do
													if (FlatIdent_9448C == 0) then
														v557 = 0 + 0;
														v558 = nil;
														FlatIdent_9448C = 1;
													end
													if (FlatIdent_9448C == 1) then
														while true do
															if (v557 == 0) then
																local FlatIdent_8B7B0 = 0;
																while true do
																	if (FlatIdent_8B7B0 == 0) then
																		if not v62(v301, v304, false) then
																			continue;
																		end
																		v558 = (Vector2.new(v443.X, v443.Y) - v137).Magnitude;
																		FlatIdent_8B7B0 = 1;
																	end
																	if (FlatIdent_8B7B0 == 1) then
																		v557 = 3 - 2;
																		break;
																	end
																end
															end
															if (v557 == (1 + 0)) then
																if (v558 < v134) then
																	local FlatIdent_506A5 = 0;
																	local v576;
																	while true do
																		if (FlatIdent_506A5 == 0) then
																			v576 = 1019 - (829 + 190);
																			while true do
																				if (v576 == (0 - 0)) then
																					local FlatIdent_71493 = 0;
																					while true do
																						if (FlatIdent_71493 == 1) then
																							v576 = 1 - 0;
																							break;
																						end
																						if (FlatIdent_71493 == 0) then
																							v134 = v558;
																							v135 = v301;
																							FlatIdent_71493 = 1;
																						end
																					end
																				end
																				if (v576 == (1 - 0)) then
																					v136 = v304;
																					break;
																				end
																			end
																			break;
																		end
																	end
																end
																break;
															end
														end
														break;
													end
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
					end
					return v135, v136;
				end
			end
		end
		if (v133 == 0) then
			v134 = v25;
			v135 = nil;
			v133 = 2 - 1;
		end
	end
end
local v67;
local v68 = nil;
local v69 = nil;
local function v70()
	if v67 then
		return;
	end
	v67 = hookmetamethod(game, v7("\101\247\235\87\87\247\131\91\196\233", "\224\58\168\133\54\58\146"), function(v217, ...)
		local FlatIdent_3831 = 0;
		local v218;
		local v219;
		while true do
			if (FlatIdent_3831 == 0) then
				v218 = getnamecallmethod();
				v219 = {...};
				FlatIdent_3831 = 1;
			end
			if (FlatIdent_3831 == 1) then
				if (v23 and v68 and v69) then
					if (v218 == v7("\127\95\89\248\70\131\149\29\92\68", "\107\57\54\43\157\21\230\231")) then
						local v335 = tostring(v217);
						if (v335:lower():find(v7("\200\131\30\250\173", "\175\187\235\113\149\217\188")) or v335:lower():find(v7("\58\166\147\73", "\24\92\207\225\44\131\25")) or v335:lower():find(v7("\67\218\172", "\29\43\179\216\44\123")) or v335:lower():find(v7("\185\216\45\77\186\220", "\44\221\185\64"))) then
							if (math.random(1 + 0, 100) <= v30) then
								local v445 = 0 - 0;
								while true do
									if (v445 == (0 + 0)) then
										for v547, v548 in ipairs(v219) do
											if (typeof(v548) == v7("\55\226\75\75\124\19\180", "\19\97\135\40\63")) then
												v219[v547] = v69.Position + Vector3.new(math.random(-(618 - (520 + 93)), 5), math.random(-5, 281 - (259 + 17)), math.random(-(1 + 4), 5));
											elseif (typeof(v548) == v7("\141\122\33\58\34\52", "\81\206\60\83\91\79")) then
												v219[v547] = CFrame.new(v69.Position);
											elseif ((typeof(v548) == v7("\103\165\195\102\46\205\78\161", "\196\46\203\176\18\79\163\45")) and v548:IsA(v7("\154\35\109\27\20\250\253\172", "\143\216\66\30\126\68\155"))) then
												v219[v547] = v69;
											end
										end
										if (typeof(v219[#v219]) == v7("\190\201\15\199\192", "\129\202\168\109\171\165\195\183")) then
											for v561, v562 in pairs(v219[#v219]) do
												if (typeof(v562) == v7("\20\93\52\204\209\6\181", "\134\66\56\87\184\190\116")) then
													v219[#v219][v561] = v69.Position;
												elseif (typeof(v562) == v7("\31\23\27\186\20\238", "\85\92\81\105\219\121\139\65")) then
													v219[#v219][v561] = CFrame.new(v69.Position);
												elseif ((typeof(v562) == v7("\212\189\67\81\125\209\254\182", "\191\157\211\48\37\28")) and v562:IsA(v7("\253\30\231\25\10\222\13\224", "\90\191\127\148\124"))) then
													v219[#v219][v561] = v69;
												end
											end
										end
										break;
									end
								end
							end
						end
					end
				end
				return v67(v217, unpack(v219));
			end
		end
	end);
end
local function v71()
	local v138 = 0 + 0;
	local v139;
	local v140;
	local v141;
	while true do
		if (v138 == (0 - 0)) then
			v139 = 0;
			v140 = nil;
			v138 = 592 - (396 + 195);
		end
		if (v138 == 1) then
			v141 = nil;
			while true do
				if (v139 == (5 - 3)) then
					v69 = v141;
					break;
				end
				if (v139 == (1762 - (440 + 1321))) then
					if ((v31 == v7("\85\136\59\4\125", "\119\24\231\78")) and v21) then
						v140, v141 = v66();
					else
						v140, v141 = v65();
					end
					v68 = v140;
					v139 = 1831 - (1059 + 770);
				end
				if (v139 == (0 - 0)) then
					local FlatIdent_8BE54 = 0;
					while true do
						if (FlatIdent_8BE54 == 1) then
							v139 = 1;
							break;
						end
						if (FlatIdent_8BE54 == 0) then
							if not v23 then
								local FlatIdent_669F5 = 0;
								local v427;
								local v428;
								while true do
									if (1 == FlatIdent_669F5) then
										while true do
											if (v427 == (0 + 0)) then
												v428 = 1347 - (641 + 706);
												while true do
													local FlatIdent_253F0 = 0;
													while true do
														if (0 == FlatIdent_253F0) then
															if (v428 == (0 + 0)) then
																v68 = nil;
																v69 = nil;
																v428 = 441 - (249 + 191);
															end
															if (v428 == (4 - 3)) then
																return;
															end
															break;
														end
													end
												end
												break;
											end
										end
										break;
									end
									if (FlatIdent_669F5 == 0) then
										v427 = 545 - (424 + 121);
										v428 = nil;
										FlatIdent_669F5 = 1;
									end
								end
							end
							v140, v141 = nil;
							FlatIdent_8BE54 = 1;
						end
					end
				end
			end
			break;
		end
	end
end
local function v72()
	local FlatIdent_810B1 = 0;
	local v142;
	while true do
		if (FlatIdent_810B1 == 0) then
			v142 = 0 + 0;
			while true do
				if ((0 - 0) == v142) then
					if v52 then
						v52:Disconnect();
					end
					v52 = v12.RenderStepped:Connect(function()
						local FlatIdent_7C57C = 0;
						local v305;
						local v306;
						local v307;
						while true do
							if (FlatIdent_7C57C == 1) then
								v307 = nil;
								while true do
									if ((0 + 0) == v305) then
										if not v22 then
											return;
										end
										v306, v307 = nil;
										v305 = 1;
									end
									if (v305 == (731 - (434 + 296))) then
										if ((v31 == v7("\175\34\176\89\217", "\113\226\77\197\42\188\32")) and v21) then
											v306, v307 = v66();
										else
											v306, v307 = v65();
										end
										if (v306 and v307) then
											local FlatIdent_45CCF = 0;
											local v446;
											local v447;
											local v448;
											local v449;
											while true do
												if (FlatIdent_45CCF == 0) then
													v446 = 0 - 0;
													v447 = nil;
													FlatIdent_45CCF = 1;
												end
												if (2 == FlatIdent_45CCF) then
													while true do
														if (v446 == 0) then
															v447 = v307.Position;
															v448 = v24 / (532 - (169 + 343));
															v446 = 1;
														end
														if (v446 == 1) then
															v449 = CFrame.lookAt(v18.CFrame.Position, v447);
															v18.CFrame = v18.CFrame:Lerp(v449, v448);
															break;
														end
													end
													break;
												end
												if (FlatIdent_45CCF == 1) then
													v448 = nil;
													v449 = nil;
													FlatIdent_45CCF = 2;
												end
											end
										end
										break;
									end
								end
								break;
							end
							if (FlatIdent_7C57C == 0) then
								v305 = 427 - (183 + 244);
								v306 = nil;
								FlatIdent_7C57C = 1;
							end
						end
					end);
					break;
				end
			end
			break;
		end
	end
end
local function v73()
	if v52 then
		local FlatIdent_61F8E = 0;
		local v229;
		while true do
			if (FlatIdent_61F8E == 0) then
				v229 = 0 + 0;
				while true do
					if (v229 == (0 - 0)) then
						v52:Disconnect();
						v52 = nil;
						break;
					end
				end
				break;
			end
		end
	end
end
local function v74()
	local FlatIdent_243F3 = 0;
	local v143;
	local v144;
	local v145;
	local v146;
	local v147;
	local v148;
	while true do
		if (FlatIdent_243F3 == 2) then
			v147 = nil;
			v148 = nil;
			FlatIdent_243F3 = 3;
		end
		if (FlatIdent_243F3 == 1) then
			v145 = nil;
			v146 = nil;
			FlatIdent_243F3 = 2;
		end
		if (FlatIdent_243F3 == 0) then
			v143 = 0 - 0;
			v144 = nil;
			FlatIdent_243F3 = 1;
		end
		if (3 == FlatIdent_243F3) then
			while true do
				if (v143 == (8 + 1)) then
					v13.InputEnded:Connect(function(v308)
						if (v308.UserInputType == Enum.UserInputType.Touch) then
							v146 = false;
						end
					end);
					break;
				end
				if (v143 == 0) then
					if not v20 then
						return;
					end
					if v58 then
						return;
					end
					v144 = Instance.new(v7("\9\21\230\176\63\24\211\160\51", "\213\90\118\148"));
					v143 = 2 - 1;
				end
				if (v143 == (1124 - (651 + 472))) then
					local FlatIdent_7DCBC = 0;
					local v247;
					while true do
						if (FlatIdent_7DCBC == 0) then
							v247 = 0 + 0;
							while true do
								if (v247 == 0) then
									local FlatIdent_1D5FF = 0;
									while true do
										if (FlatIdent_1D5FF == 1) then
											v247 = 1;
											break;
										end
										if (FlatIdent_1D5FF == 0) then
											v144.Name = v7("\117\43\172\89\95\90\22\153\89\79\82\34\177", "\45\59\78\212\54");
											v144.Parent = v17:WaitForChild(v7("\32\90\130\146\131\60\138\229\25", "\144\112\54\227\235\230\78\205"));
											FlatIdent_1D5FF = 1;
										end
									end
								end
								if (v247 == (1 + 0)) then
									v58 = Instance.new(v7("\135\45\23\232\242\78\167\60\0\242", "\59\211\72\111\156\176"));
									v143 = 2;
									break;
								end
							end
							break;
						end
					end
				end
				if (v143 == 3) then
					local FlatIdent_2C453 = 0;
					while true do
						if (FlatIdent_2C453 == 1) then
							v58.Text = v7("\155\125\155", "\32\218\52\214");
							v143 = 4;
							break;
						end
						if (FlatIdent_2C453 == 0) then
							v58.BackgroundColor3 = Color3.fromRGB(311 - 56, 483 - (397 + 86), 876 - (423 + 453));
							v58.BackgroundTransparency = 0.3;
							FlatIdent_2C453 = 1;
						end
					end
				end
				if (v143 == 5) then
					v58.BorderSizePixel = 0;
					v58.Parent = v144;
					v145 = Instance.new(v7("\123\62\18\167\227\190\64\72", "\58\46\119\81\200\145\208\37"));
					v143 = 1 + 5;
				end
				if (6 == v143) then
					local FlatIdent_92569 = 0;
					local v253;
					while true do
						if (FlatIdent_92569 == 0) then
							v253 = 0;
							while true do
								if (v253 == 0) then
									local FlatIdent_4D69A = 0;
									while true do
										if (0 == FlatIdent_4D69A) then
											v145.CornerRadius = UDim.new(1 + 0, 0);
											v145.Parent = v58;
											FlatIdent_4D69A = 1;
										end
										if (FlatIdent_4D69A == 1) then
											v253 = 1 + 0;
											break;
										end
									end
								end
								if (v253 == 1) then
									v58.InputBegan:Connect(function(v401)
										if (v401.UserInputType == Enum.UserInputType.Touch) then
											local v450 = 0 + 0;
											local v451;
											while true do
												if (v450 == 0) then
													v451 = 0;
													while true do
														if (v451 == (0 + 0)) then
															v57 = true;
															v58.BackgroundColor3 = Color3.fromRGB(1190 - (50 + 1140), 221 + 34, 0 + 0);
															break;
														end
													end
													break;
												end
											end
										end
									end);
									v143 = 1 + 6;
									break;
								end
							end
							break;
						end
					end
				end
				if (7 == v143) then
					local FlatIdent_15C08 = 0;
					while true do
						if (FlatIdent_15C08 == 0) then
							v58.InputEnded:Connect(function(v309)
								if (v309.UserInputType == Enum.UserInputType.Touch) then
									local FlatIdent_89C1C = 0;
									local v358;
									while true do
										if (FlatIdent_89C1C == 0) then
											v358 = 0;
											while true do
												if (v358 == (0 - 0)) then
													v57 = false;
													v58.BackgroundColor3 = Color3.fromRGB(255, 0 + 0, 596 - (157 + 439));
													break;
												end
											end
											break;
										end
									end
								end
							end);
							v146 = false;
							FlatIdent_15C08 = 1;
						end
						if (1 == FlatIdent_15C08) then
							v147 = nil;
							v143 = 8;
							break;
						end
					end
				end
				if (v143 == (6 - 2)) then
					local FlatIdent_2E3CE = 0;
					while true do
						if (FlatIdent_2E3CE == 0) then
							v58.TextColor3 = Color3.new(1, 1, 1);
							v58.TextSize = 20;
							FlatIdent_2E3CE = 1;
						end
						if (FlatIdent_2E3CE == 1) then
							v58.Font = Enum.Font.GothamBold;
							v143 = 16 - 11;
							break;
						end
					end
				end
				if (v143 == 2) then
					local FlatIdent_29A75 = 0;
					local v258;
					while true do
						if (FlatIdent_29A75 == 0) then
							v258 = 0 - 0;
							while true do
								if (v258 == 1) then
									v58.Position = UDim2.new(918.85 - (782 + 136), 855 - (112 + 743), 1171.7 - (1026 + 145), 0);
									v143 = 3;
									break;
								end
								if (v258 == 0) then
									local FlatIdent_8E3FD = 0;
									while true do
										if (1 == FlatIdent_8E3FD) then
											v258 = 3 - 2;
											break;
										end
										if (FlatIdent_8E3FD == 0) then
											v58.Name = v7("\111\142\238\47\65\147\193\56\90\147\236\35", "\77\46\231\131");
											v58.Size = UDim2.new(0, 14 + 66, 718 - (493 + 225), 80);
											FlatIdent_8E3FD = 1;
										end
									end
								end
							end
							break;
						end
					end
				end
				if (v143 == (5 + 3)) then
					local FlatIdent_62CB4 = 0;
					local v259;
					while true do
						if (FlatIdent_62CB4 == 0) then
							v259 = 0 - 0;
							while true do
								if (v259 == (0 + 0)) then
									local FlatIdent_64E47 = 0;
									while true do
										if (1 == FlatIdent_64E47) then
											v259 = 1596 - (210 + 1385);
											break;
										end
										if (FlatIdent_64E47 == 0) then
											v148 = nil;
											v58.InputBegan:Connect(function(v402)
												if ((v402.UserInputType == Enum.UserInputType.Touch) and (v402 ~= v56)) then
													local FlatIdent_7735C = 0;
													local v453;
													while true do
														if (FlatIdent_7735C == 0) then
															v453 = 0 - 0;
															while true do
																if (v453 == (1 + 0)) then
																	v148 = v58.Position;
																	break;
																end
																if (v453 == (0 - 0)) then
																	v146 = true;
																	v147 = v402.Position;
																	v453 = 1;
																end
															end
															break;
														end
													end
												end
											end);
											FlatIdent_64E47 = 1;
										end
									end
								end
								if (v259 == (1690 - (1201 + 488))) then
									v13.InputChanged:Connect(function(v403)
										if (v146 and (v403.UserInputType == Enum.UserInputType.Touch)) then
											local FlatIdent_33F65 = 0;
											local v454;
											local v455;
											while true do
												if (FlatIdent_33F65 == 0) then
													v454 = 0 + 0;
													v455 = nil;
													FlatIdent_33F65 = 1;
												end
												if (FlatIdent_33F65 == 1) then
													while true do
														if (v454 == (0 - 0)) then
															v455 = v403.Position - v147;
															v58.Position = UDim2.new(v148.X.Scale, v148.X.Offset + v455.X, v148.Y.Scale, v148.Y.Offset + v455.Y);
															break;
														end
													end
													break;
												end
											end
										end
									end);
									v143 = 9;
									break;
								end
							end
							break;
						end
					end
				end
			end
			break;
		end
	end
end
local function v75()
	if v58 then
		local v230 = 0 - 0;
		local v231;
		while true do
			if ((585 - (352 + 233)) == v230) then
				v231 = 0 - 0;
				while true do
					if (v231 == (0 + 0)) then
						v58.Parent:Destroy();
						v58 = nil;
						break;
					end
				end
				break;
			end
		end
	end
end
local function v76()
	local FlatIdent_1BD19 = 0;
	while true do
		if (FlatIdent_1BD19 == 0) then
			if not v20 then
				return;
			end
			v12.RenderStepped:Connect(function()
				if (v22 and v57) then
					local FlatIdent_7DB9E = 0;
					local v260;
					local v261;
					local v262;
					while true do
						if (FlatIdent_7DB9E == 1) then
							v262 = nil;
							while true do
								if (v260 == (574 - (489 + 85))) then
									v261, v262 = v65();
									if (v261 and v262) then
										local v429 = 0;
										local v430;
										local v431;
										local v432;
										while true do
											if (v429 == 0) then
												v430 = v262.Position;
												v431 = v24 / 20;
												v429 = 1;
											end
											if (v429 == (1502 - (277 + 1224))) then
												v432 = CFrame.lookAt(v18.CFrame.Position, v430);
												v18.CFrame = v18.CFrame:Lerp(v432, v431);
												break;
											end
										end
									end
									break;
								end
							end
							break;
						end
						if (FlatIdent_7DB9E == 0) then
							v260 = 0 - 0;
							v261 = nil;
							FlatIdent_7DB9E = 1;
						end
					end
				end
			end);
			break;
		end
	end
end
local function v77(v149)
	local v150 = 1493 - (663 + 830);
	local v151;
	while true do
		if (v150 == 6) then
			v151.tracer.Thickness = 1 + 0;
			v151.tracer.Transparency = 2 - 1;
			for v310 = 1, 887 - (461 + 414) do
				local FlatIdent_79F35 = 0;
				local v311;
				local v312;
				while true do
					if (FlatIdent_79F35 == 0) then
						v311 = 0;
						v312 = nil;
						FlatIdent_79F35 = 1;
					end
					if (1 == FlatIdent_79F35) then
						while true do
							if (v311 == (0 + 0)) then
								local FlatIdent_602BB = 0;
								while true do
									if (1 == FlatIdent_602BB) then
										v311 = 1 + 0;
										break;
									end
									if (FlatIdent_602BB == 0) then
										v312 = Drawing.new(v7("\172\174\201\254", "\159\224\199\167\155\55"));
										v312.Visible = false;
										FlatIdent_602BB = 1;
									end
								end
							end
							if (2 == v311) then
								table.insert(v151.skeleton, v312);
								break;
							end
							if (v311 == (1 + 0)) then
								local FlatIdent_61F8A = 0;
								while true do
									if (FlatIdent_61F8A == 1) then
										v311 = 2;
										break;
									end
									if (FlatIdent_61F8A == 0) then
										v312.Color = v42;
										v312.Thickness = 1 + 0;
										FlatIdent_61F8A = 1;
									end
								end
							end
						end
						break;
					end
				end
			end
			v47[v149] = v151;
			break;
		end
		if (v150 == 0) then
			if v47[v149] then
				return;
			end
			v151 = {[v7("\41\131\40", "\86\75\236\80\204\201\221")]=Drawing.new(v7("\65\80\98\132\236\142", "\235\18\33\23\229\158")),[v7("\94\187\204\190", "\219\48\218\161")]=Drawing.new(v7("\208\116\100\93", "\128\132\17\28\41\187\47")),[v7("\9\55\7\54\73\9", "\61\97\82\102\90")]=Drawing.new(v7("\152\43\179\95", "\105\204\78\203\43\167\55\126")),[v7("\161\163\48\10\18\10\196\84", "\49\197\202\67\126\115\100\167")]=Drawing.new(v7("\3\94\199\61", "\62\87\59\191\73\224\54")),[v7("\243\16\251\202\226\16", "\169\135\98\154")]=Drawing.new(v7("\231\126\42\81", "\168\171\23\68\52\157\83")),[v7("\231\122\240\161\32\57\136\250", "\231\148\17\149\205\69\77")]={}};
			v151.box.Visible = false;
			v151.box.Color = v39;
			v150 = 1;
		end
		if (v150 == (251 - (172 + 78))) then
			local FlatIdent_8384B = 0;
			while true do
				if (FlatIdent_8384B == 0) then
					v151.box.Thickness = 1 - 0;
					v151.box.Transparency = 1 + 0;
					FlatIdent_8384B = 1;
				end
				if (FlatIdent_8384B == 1) then
					v151.box.Filled = false;
					v151.name.Visible = false;
					FlatIdent_8384B = 2;
				end
				if (FlatIdent_8384B == 2) then
					v150 = 2 - 0;
					break;
				end
			end
		end
		if (v150 == 2) then
			local FlatIdent_285D = 0;
			while true do
				if (FlatIdent_285D == 0) then
					v151.name.Color = Color3.new(1, 1 + 0, 1 + 0);
					v151.name.Center = true;
					FlatIdent_285D = 1;
				end
				if (FlatIdent_285D == 1) then
					v151.name.Size = 26 - 10;
					v151.name.Outline = true;
					FlatIdent_285D = 2;
				end
				if (2 == FlatIdent_285D) then
					v150 = 3;
					break;
				end
			end
		end
		if (v150 == (3 - 0)) then
			v151.health.Visible = false;
			v151.health.Color = Color3.new(0 + 0, 1, 0 + 0);
			v151.health.Center = true;
			v151.health.Size = 14;
			v150 = 2 + 2;
		end
		if (v150 == (19 - 14)) then
			local FlatIdent_2E7F5 = 0;
			while true do
				if (FlatIdent_2E7F5 == 1) then
					v151.tracer.Visible = false;
					v151.tracer.Color = v41;
					FlatIdent_2E7F5 = 2;
				end
				if (FlatIdent_2E7F5 == 0) then
					v151.distance.Size = 27 - 15;
					v151.distance.Outline = true;
					FlatIdent_2E7F5 = 1;
				end
				if (FlatIdent_2E7F5 == 2) then
					v150 = 6;
					break;
				end
			end
		end
		if (v150 == (2 + 2)) then
			local FlatIdent_259C6 = 0;
			while true do
				if (2 == FlatIdent_259C6) then
					v150 = 452 - (133 + 314);
					break;
				end
				if (FlatIdent_259C6 == 0) then
					v151.health.Outline = true;
					v151.distance.Visible = false;
					FlatIdent_259C6 = 1;
				end
				if (FlatIdent_259C6 == 1) then
					v151.distance.Color = Color3.new(1 + 0, 1, 0);
					v151.distance.Center = true;
					FlatIdent_259C6 = 2;
				end
			end
		end
	end
end
local function v78(v152)
	local FlatIdent_542D1 = 0;
	local v153;
	while true do
		if (FlatIdent_542D1 == 1) then
			v153.box:Remove();
			v153.name:Remove();
			FlatIdent_542D1 = 2;
		end
		if (0 == FlatIdent_542D1) then
			v153 = v47[v152];
			if not v153 then
				return;
			end
			FlatIdent_542D1 = 1;
		end
		if (FlatIdent_542D1 == 2) then
			v153.health:Remove();
			v153.distance:Remove();
			FlatIdent_542D1 = 3;
		end
		if (FlatIdent_542D1 == 3) then
			v153.tracer:Remove();
			for v220, v221 in ipairs(v153.skeleton) do
				v221:Remove();
			end
			FlatIdent_542D1 = 4;
		end
		if (FlatIdent_542D1 == 4) then
			v47[v152] = nil;
			break;
		end
	end
end
local function v79()
	local v155 = 0;
	local v156;
	local v157;
	while true do
		if (v155 == 1) then
			for v313, v314 in pairs(v47) do
				if not v60(v313) then
					local FlatIdent_90507 = 0;
					local v362;
					while true do
						if (FlatIdent_90507 == 0) then
							v362 = 0;
							while true do
								if (v362 == (0 + 0)) then
									v314.box.Visible = false;
									v314.name.Visible = false;
									v362 = 1;
								end
								if (v362 == (216 - (199 + 14))) then
									continue;
									break;
								end
								if (v362 == (7 - 5)) then
									local FlatIdent_7695C = 0;
									while true do
										if (FlatIdent_7695C == 1) then
											v362 = 1552 - (647 + 902);
											break;
										end
										if (FlatIdent_7695C == 0) then
											v314.tracer.Visible = false;
											for v496, v497 in ipairs(v314.skeleton) do
												v497.Visible = false;
											end
											FlatIdent_7695C = 1;
										end
									end
								end
								if (v362 == (2 - 1)) then
									local FlatIdent_5F7B5 = 0;
									while true do
										if (FlatIdent_5F7B5 == 1) then
											v362 = 2;
											break;
										end
										if (0 == FlatIdent_5F7B5) then
											v314.health.Visible = false;
											v314.distance.Visible = false;
											FlatIdent_5F7B5 = 1;
										end
									end
								end
							end
							break;
						end
					end
				end
				if not v61(v313, true) then
					local FlatIdent_15E91 = 0;
					local v363;
					while true do
						if (FlatIdent_15E91 == 0) then
							v363 = 233 - (85 + 148);
							while true do
								if (v363 == (1291 - (426 + 863))) then
									local FlatIdent_87F0A = 0;
									while true do
										if (FlatIdent_87F0A == 0) then
											v314.tracer.Visible = false;
											for v499, v500 in ipairs(v314.skeleton) do
												v500.Visible = false;
											end
											FlatIdent_87F0A = 1;
										end
										if (FlatIdent_87F0A == 1) then
											v363 = 13 - 10;
											break;
										end
									end
								end
								if (v363 == 0) then
									local FlatIdent_47C14 = 0;
									while true do
										if (FlatIdent_47C14 == 0) then
											v314.box.Visible = false;
											v314.name.Visible = false;
											FlatIdent_47C14 = 1;
										end
										if (FlatIdent_47C14 == 1) then
											v363 = 1655 - (873 + 781);
											break;
										end
									end
								end
								if (v363 == (1 - 0)) then
									local FlatIdent_3BEFE = 0;
									while true do
										if (0 == FlatIdent_3BEFE) then
											v314.health.Visible = false;
											v314.distance.Visible = false;
											FlatIdent_3BEFE = 1;
										end
										if (1 == FlatIdent_3BEFE) then
											v363 = 4 - 2;
											break;
										end
									end
								end
								if (v363 == 3) then
									continue;
									break;
								end
							end
							break;
						end
					end
				end
				if not v63(v313, true) then
					local FlatIdent_943B = 0;
					while true do
						if (FlatIdent_943B == 3) then
							continue;
							break;
						end
						if (FlatIdent_943B == 0) then
							v314.box.Visible = false;
							v314.name.Visible = false;
							FlatIdent_943B = 1;
						end
						if (FlatIdent_943B == 1) then
							v314.health.Visible = false;
							v314.distance.Visible = false;
							FlatIdent_943B = 2;
						end
						if (FlatIdent_943B == 2) then
							v314.tracer.Visible = false;
							for v407, v408 in ipairs(v314.skeleton) do
								v408.Visible = false;
							end
							FlatIdent_943B = 3;
						end
					end
				end
				local v315 = v313.Character;
				local v316 = v315:FindFirstChild(v7("\164\232\65\51\28\67\115\136", "\26\236\157\44\82\114\44"));
				local v317 = v315:FindFirstChild(v7("\2\59\216\90\36\33\220\95\24\33\218\79\26\47\199\79", "\59\74\78\181"));
				local v318 = v315:FindFirstChild(v7("\13\212\91\94", "\211\69\177\58\58"));
				if (not v317 or not v318) then
					local FlatIdent_1F799 = 0;
					while true do
						if (FlatIdent_1F799 == 1) then
							v314.health.Visible = false;
							v314.distance.Visible = false;
							FlatIdent_1F799 = 2;
						end
						if (FlatIdent_1F799 == 2) then
							v314.tracer.Visible = false;
							for v410, v411 in ipairs(v314.skeleton) do
								v411.Visible = false;
							end
							FlatIdent_1F799 = 3;
						end
						if (3 == FlatIdent_1F799) then
							continue;
							break;
						end
						if (0 == FlatIdent_1F799) then
							v314.box.Visible = false;
							v314.name.Visible = false;
							FlatIdent_1F799 = 1;
						end
					end
				end
				if v44 then
					if not v62(v313, v317, true) then
						local FlatIdent_32079 = 0;
						local v433;
						while true do
							if (0 == FlatIdent_32079) then
								v433 = 0 + 0;
								while true do
									if (v433 == (3 - 2)) then
										local FlatIdent_81F6A = 0;
										while true do
											if (FlatIdent_81F6A == 1) then
												v433 = 2 - 0;
												break;
											end
											if (FlatIdent_81F6A == 0) then
												v314.health.Visible = false;
												v314.distance.Visible = false;
												FlatIdent_81F6A = 1;
											end
										end
									end
									if (v433 == 2) then
										local FlatIdent_8C3A2 = 0;
										while true do
											if (FlatIdent_8C3A2 == 0) then
												v314.tracer.Visible = false;
												for v530, v531 in ipairs(v314.skeleton) do
													v531.Visible = false;
												end
												FlatIdent_8C3A2 = 1;
											end
											if (FlatIdent_8C3A2 == 1) then
												v433 = 8 - 5;
												break;
											end
										end
									end
									if (v433 == (1947 - (414 + 1533))) then
										local FlatIdent_52478 = 0;
										while true do
											if (FlatIdent_52478 == 0) then
												v314.box.Visible = false;
												v314.name.Visible = false;
												FlatIdent_52478 = 1;
											end
											if (1 == FlatIdent_52478) then
												v433 = 1;
												break;
											end
										end
									end
									if (v433 == (3 + 0)) then
										continue;
										break;
									end
								end
								break;
							end
						end
					end
				end
				local v319 = 555 - (443 + 112);
				if v157 then
					v319 = (v317.Position - v157.Position).Magnitude;
				end
				if (v319 > v46) then
					local v375 = 0;
					local v376;
					while true do
						if (v375 == 0) then
							v376 = 0;
							while true do
								if (2 == v376) then
									local FlatIdent_53D9 = 0;
									while true do
										if (FlatIdent_53D9 == 0) then
											v314.tracer.Visible = false;
											for v549, v550 in ipairs(v314.skeleton) do
												v550.Visible = false;
											end
											FlatIdent_53D9 = 1;
										end
										if (FlatIdent_53D9 == 1) then
											v376 = 3;
											break;
										end
									end
								end
								if (v376 == (1480 - (888 + 591))) then
									local FlatIdent_67029 = 0;
									while true do
										if (FlatIdent_67029 == 0) then
											v314.health.Visible = false;
											v314.distance.Visible = false;
											FlatIdent_67029 = 1;
										end
										if (FlatIdent_67029 == 1) then
											v376 = 2;
											break;
										end
									end
								end
								if (v376 == (0 - 0)) then
									local FlatIdent_927F1 = 0;
									while true do
										if (FlatIdent_927F1 == 1) then
											v376 = 1 + 0;
											break;
										end
										if (FlatIdent_927F1 == 0) then
											v314.box.Visible = false;
											v314.name.Visible = false;
											FlatIdent_927F1 = 1;
										end
									end
								end
								if (v376 == 3) then
									continue;
									break;
								end
							end
							break;
						end
					end
				end
				local v320, v321 = v18:WorldToViewportPoint(v317.Position);
				local v322, v323 = v18:WorldToViewportPoint(v318.Position);
				if (not v321 and not v323) then
					local FlatIdent_18D84 = 0;
					local v377;
					local v378;
					while true do
						if (FlatIdent_18D84 == 1) then
							while true do
								if (v377 == 0) then
									v378 = 0 + 0;
									while true do
										if (v378 == (1 + 0)) then
											v314.health.Visible = false;
											v314.distance.Visible = false;
											v378 = 1 + 1;
										end
										if (v378 == (3 - 1)) then
											local FlatIdent_4B897 = 0;
											while true do
												if (0 == FlatIdent_4B897) then
													v314.tracer.Visible = false;
													for v552, v553 in ipairs(v314.skeleton) do
														v553.Visible = false;
													end
													FlatIdent_4B897 = 1;
												end
												if (1 == FlatIdent_4B897) then
													v378 = 5 - 2;
													break;
												end
											end
										end
										if (v378 == (1681 - (136 + 1542))) then
											continue;
											break;
										end
										if (v378 == (0 - 0)) then
											local FlatIdent_5CD30 = 0;
											while true do
												if (1 == FlatIdent_5CD30) then
													v378 = 1;
													break;
												end
												if (0 == FlatIdent_5CD30) then
													v314.box.Visible = false;
													v314.name.Visible = false;
													FlatIdent_5CD30 = 1;
												end
											end
										end
									end
									break;
								end
							end
							break;
						end
						if (FlatIdent_18D84 == 0) then
							v377 = 0 - 0;
							v378 = nil;
							FlatIdent_18D84 = 1;
						end
					end
				end
				if v32 then
					local v379 = 0;
					local v380;
					local v381;
					while true do
						if (v379 == (2 + 0)) then
							v314.box.Color = v39;
							v314.box.Visible = true;
							break;
						end
						if (v379 == 0) then
							local FlatIdent_8DA9B = 0;
							while true do
								if (FlatIdent_8DA9B == 0) then
									v380 = math.abs(v322.Y - v320.Y) * 2;
									v381 = v380 * (0.6 - 0);
									FlatIdent_8DA9B = 1;
								end
								if (FlatIdent_8DA9B == 1) then
									v379 = 1 + 0;
									break;
								end
							end
						end
						if ((487 - (68 + 418)) == v379) then
							v314.box.Position = Vector2.new(v320.X - (v381 / (4 - 2)), v320.Y - (v380 / 2));
							v314.box.Size = Vector2.new(v381, v380);
							v379 = 3 - 1;
						end
					end
				else
					v314.box.Visible = false;
				end
				if v34 then
					local FlatIdent_5F12F = 0;
					local v383;
					while true do
						if (FlatIdent_5F12F == 0) then
							v383 = 0 + 0;
							while true do
								if (v383 == 0) then
									local FlatIdent_6D09C = 0;
									while true do
										if (FlatIdent_6D09C == 0) then
											v314.name.Position = Vector2.new(v320.X, (v320.Y - math.abs(v322.Y - v320.Y)) - (1117 - (770 + 322)));
											v314.name.Text = v313.Name;
											FlatIdent_6D09C = 1;
										end
										if (FlatIdent_6D09C == 1) then
											v383 = 1;
											break;
										end
									end
								end
								if (1 == v383) then
									v314.name.Visible = true;
									break;
								end
							end
							break;
						end
					end
				else
					v314.name.Visible = false;
				end
				if v35 then
					local FlatIdent_64F8C = 0;
					local v385;
					local v386;
					while true do
						if (FlatIdent_64F8C == 1) then
							while true do
								if (v385 == (0 + 0)) then
									local FlatIdent_6FC5B = 0;
									while true do
										if (FlatIdent_6FC5B == 0) then
											v386 = v316.Health / v316.MaxHealth;
											v314.health.Position = Vector2.new(v320.X, (v320.Y - math.abs(v322.Y - v320.Y)) - (2 + 8));
											FlatIdent_6FC5B = 1;
										end
										if (FlatIdent_6FC5B == 1) then
											v385 = 1;
											break;
										end
									end
								end
								if ((1 - 0) == v385) then
									v314.health.Text = string.format(v7("\242\225\54\176\237", "\171\215\133\25\149\137"), math.floor(v316.Health), math.floor(v316.MaxHealth));
									v314.health.Color = Color3.new((1 - 0) - v386, v386, 0 - 0);
									v385 = 2;
								end
								if (v385 == (7 - 5)) then
									v314.health.Visible = true;
									break;
								end
							end
							break;
						end
						if (0 == FlatIdent_64F8C) then
							v385 = 0 + 0;
							v386 = nil;
							FlatIdent_64F8C = 1;
						end
					end
				else
					v314.health.Visible = false;
				end
				if v36 then
					local FlatIdent_21811 = 0;
					local v388;
					while true do
						if (FlatIdent_21811 == 0) then
							v388 = 0;
							while true do
								if ((1 + 0) == v388) then
									v314.distance.Visible = true;
									break;
								end
								if (v388 == 0) then
									v314.distance.Position = Vector2.new(v320.X, v320.Y + math.abs(v322.Y - v320.Y) + (7 - 2));
									v314.distance.Text = string.format(v7("\164\134\98\252\175\35\232\87\229\219", "\34\129\168\82\154\143\80\156"), v319);
									v388 = 1 + 0;
								end
							end
							break;
						end
					end
				else
					v314.distance.Visible = false;
				end
				if v37 then
					local v390 = 0 + 0;
					local v391;
					while true do
						if (v390 == (0 + 0)) then
							v391 = 0 - 0;
							while true do
								if (v391 == (1 - 0)) then
									v314.tracer.Color = v41;
									v314.tracer.Visible = true;
									break;
								end
								if (v391 == 0) then
									local FlatIdent_398FF = 0;
									while true do
										if (1 == FlatIdent_398FF) then
											v391 = 1;
											break;
										end
										if (FlatIdent_398FF == 0) then
											v314.tracer.From = v156;
											v314.tracer.To = Vector2.new(v320.X, v320.Y);
											FlatIdent_398FF = 1;
										end
									end
								end
							end
							break;
						end
					end
				else
					v314.tracer.Visible = false;
				end
				if v38 then
					local v393 = v59(v315);
					local v394 = {{v7("\173\183\50\15", "\233\229\210\83\107\40\46"),v7("\244\82\34\211\23\245\77\32\197\10", "\101\161\34\82\182")},{v7("\221\29\73\251\201\214\141\60\251\2", "\78\136\109\57\158\187\130\226"),v7("\18\48\238\244\44\11\246\227\45\48", "\145\94\95\153")},{v7("\200\221\4\208\92\131\242\223\7\218", "\215\157\173\116\181\46"),v7("\25\177\141\230\239\37\164\142\224\251\39\185", "\186\85\212\235\146")},{v7("\238\132\16\234\12\254\72\199\147\55\236\52", "\56\162\225\118\158\89\142"),v7("\112\0\198\187\14\215\75\0\210\142\48\213", "\184\60\101\160\207\66")},{v7("\29\135\122\168\29\141\107\185\35\163\110\177", "\220\81\226\28"),v7("\63\208\132\239\194\198\29\209", "\167\115\181\226\155\138")},{v7("\215\50\247\89\105\69\201\240\49\232", "\166\130\66\135\60\27\17"),v7("\118\67\201\125\36\113\90\222\112\34\101\88\195", "\80\36\42\174\21")},{v7("\124\25\48\114\90\37\39\106\75\2\22\104\67", "\26\46\112\87"),v7("\139\42\172\124\171\147\74\163\188\49\138\102\178", "\212\217\67\203\20\223\223\37")},{v7("\136\132\175\218\174\161\167\197\191\159\137\192\183", "\178\218\237\200"),v7("\132\188\225\216\162\157\231\222\178", "\176\214\213\134")},{v7("\216\162\161\209\186\98\86\230\190\185", "\57\148\205\214\180\200\54"),v7("\62\248\51\32\67\2\237\48\38\90\23\250", "\22\114\157\85\84")},{v7("\232\206\21\208\104\230\184\193\217\63\193\90", "\200\164\171\115\164\61\150"),v7("\146\241\5\81\175\177\227\6\87\175\187\243", "\227\222\148\99\37")},{v7("\31\87\84\226\213\60\69\87\228\213\54\85", "\153\83\50\50\150"),v7("\113\115\117\8\85\164\66\73", "\45\61\22\19\124\19\203")},{v7("\237\29\26\240\16\68\182\211\1\2", "\217\161\114\109\149\98\16"),v7("\32\41\63\116\168\65\2\48\61\110\144\113\21", "\20\114\64\88\28\220")},{v7("\3\8\213\188\236\229\173\33\4\192\152\253\215", "\221\81\97\178\212\152\176"),v7("\255\238\26\243\14\225\232\10\254\8\225\226\26", "\122\173\135\125\155")},{v7("\182\200\7\177\43\29\199\147\196\18\149\58\54", "\168\228\161\96\217\95\81"),v7("\233\216\41\84\59\113\212\222\58", "\55\187\177\78\60\79")}};
					local v395 = 1 - 0;
					for v413, v414 in ipairs(v394) do
						if (v395 > #v314.skeleton) then
							break;
						end
						local v415 = v393[v414[1 + 0]];
						local v416 = v393[v414[2]];
						if (v415 and v416) then
							local v481, v482 = v18:WorldToViewportPoint(v415.Position);
							local v483, v484 = v18:WorldToViewportPoint(v416.Position);
							if (v482 and v484) then
								local FlatIdent_943B1 = 0;
								local v514;
								local v515;
								while true do
									if (FlatIdent_943B1 == 1) then
										while true do
											if (v514 == (0 - 0)) then
												v515 = 0;
												while true do
													if (v515 == (0 + 0)) then
														local FlatIdent_5D1D5 = 0;
														while true do
															if (FlatIdent_5D1D5 == 1) then
																v515 = 470 - (304 + 165);
																break;
															end
															if (FlatIdent_5D1D5 == 0) then
																v314.skeleton[v395].From = Vector2.new(v481.X, v481.Y);
																v314.skeleton[v395].To = Vector2.new(v483.X, v483.Y);
																FlatIdent_5D1D5 = 1;
															end
														end
													end
													if (v515 == (1 + 0)) then
														v314.skeleton[v395].Color = v42;
														v314.skeleton[v395].Visible = true;
														break;
													end
												end
												break;
											end
										end
										break;
									end
									if (FlatIdent_943B1 == 0) then
										v514 = 0;
										v515 = nil;
										FlatIdent_943B1 = 1;
									end
								end
							else
								v314.skeleton[v395].Visible = false;
							end
						else
							v314.skeleton[v395].Visible = false;
						end
						v395 = v395 + (161 - (54 + 106));
					end
					for v417 = v395, #v314.skeleton do
						v314.skeleton[v417].Visible = false;
					end
				else
					for v419, v420 in ipairs(v314.skeleton) do
						v420.Visible = false;
					end
				end
			end
			break;
		end
		if (v155 == 0) then
			local FlatIdent_B716 = 0;
			local v288;
			while true do
				if (FlatIdent_B716 == 0) then
					v288 = 0;
					while true do
						if ((1970 - (1618 + 351)) == v288) then
							v155 = 1 + 0;
							break;
						end
						if (v288 == (1016 - (10 + 1006))) then
							v156 = Vector2.new(v18.ViewportSize.X / (1 + 1), v18.ViewportSize.Y / (1 + 1));
							v157 = v17.Character and v17.Character:FindFirstChild(v7("\223\230\49\211\249\252\53\214\197\252\51\198\199\242\46\198", "\178\151\147\92"));
							v288 = 3 - 2;
						end
					end
					break;
				end
			end
		end
	end
end
local function v80(v158)
	local FlatIdent_7F2A4 = 0;
	local v159;
	local v160;
	while true do
		if (FlatIdent_7F2A4 == 0) then
			v159 = 0;
			v160 = nil;
			FlatIdent_7F2A4 = 1;
		end
		if (FlatIdent_7F2A4 == 1) then
			while true do
				if (v159 == (1033 - (912 + 121))) then
					v160 = 0 + 0;
					while true do
						if (v160 == 0) then
							if v48[v158] then
								return;
							end
							if v158.Character then
								local FlatIdent_4087C = 0;
								local v434;
								local v435;
								while true do
									if (FlatIdent_4087C == 0) then
										v434 = 0;
										v435 = nil;
										FlatIdent_4087C = 1;
									end
									if (FlatIdent_4087C == 1) then
										while true do
											if (v434 == (1290 - (1140 + 149))) then
												v435.OutlineColor = Color3.new(1 + 0, 1, 1 - 0);
												v435.FillTransparency = 0.5;
												v434 = 2;
											end
											if (v434 == 0) then
												local FlatIdent_66362 = 0;
												while true do
													if (FlatIdent_66362 == 0) then
														v435 = Instance.new(v7("\5\199\88\227\74\198\135\37\218", "\224\77\174\63\139\38\175"));
														v435.FillColor = v40;
														FlatIdent_66362 = 1;
													end
													if (FlatIdent_66362 == 1) then
														v434 = 1 + 0;
														break;
													end
												end
											end
											if (v434 == (6 - 4)) then
												local FlatIdent_7A6E5 = 0;
												while true do
													if (FlatIdent_7A6E5 == 1) then
														v434 = 1 + 2;
														break;
													end
													if (FlatIdent_7A6E5 == 0) then
														v435.OutlineTransparency = 0 - 0;
														v435.Parent = v158.Character;
														FlatIdent_7A6E5 = 1;
													end
												end
											end
											if (v434 == (10 - 7)) then
												v48[v158] = v435;
												break;
											end
										end
										break;
									end
								end
							end
							break;
						end
					end
					break;
				end
			end
			break;
		end
	end
end
local function v81(v161)
	if v48[v161] then
		local FlatIdent_6426D = 0;
		local v232;
		local v233;
		while true do
			if (FlatIdent_6426D == 1) then
				while true do
					if (v232 == (186 - (165 + 21))) then
						v233 = 111 - (61 + 50);
						while true do
							if ((0 + 0) == v233) then
								v48[v161]:Destroy();
								v48[v161] = nil;
								break;
							end
						end
						break;
					end
				end
				break;
			end
			if (FlatIdent_6426D == 0) then
				v232 = 0;
				v233 = nil;
				FlatIdent_6426D = 1;
			end
		end
	end
end
local function v82()
	for v222, v223 in pairs(v48) do
		if (v222 and v222.Character) then
			local FlatIdent_87A87 = 0;
			local v289;
			local v290;
			while true do
				if (FlatIdent_87A87 == 1) then
					while true do
						if (v289 == 1) then
							local FlatIdent_282A9 = 0;
							while true do
								if (FlatIdent_282A9 == 1) then
									v289 = 2;
									break;
								end
								if (0 == FlatIdent_282A9) then
									if (v45 and not v63(v222, true)) then
										v290 = false;
									end
									v223.Enabled = v290;
									FlatIdent_282A9 = 1;
								end
							end
						end
						if (v289 == (0 - 0)) then
							local FlatIdent_80D6 = 0;
							while true do
								if (FlatIdent_80D6 == 1) then
									v289 = 1 + 0;
									break;
								end
								if (FlatIdent_80D6 == 0) then
									v290 = v33;
									if (v43 and (v222.Team == v17.Team)) then
										v290 = false;
									end
									FlatIdent_80D6 = 1;
								end
							end
						end
						if (v289 == 2) then
							v223.FillColor = v40;
							break;
						end
					end
					break;
				end
				if (FlatIdent_87A87 == 0) then
					v289 = 0 - 0;
					v290 = nil;
					FlatIdent_87A87 = 1;
				end
			end
		else
			v81(v222);
		end
	end
end
local v83 = v8:CreateWindow({[v7("\176\72\76\34\129", "\78\228\33\56")]=v7("\224\123\170\12\151\207\70\242\42\197\239\108\161\6\139\207\114", "\229\174\30\210\99"),[v7("\58\248\146\89\226\47", "\89\123\141\230\49\141\93")]=v7("\241\104\182\40\17\88\250\116\248\86\78\10\181\49\245\3\30\80\252\99\238", "\42\147\17\150\108\112"),[v7("\41\169\33\123\226\250", "\136\111\198\77\31\135")]=v7("\44\12\191\89\175\229\47", "\201\98\105\199\54\221\132\119"),[v7("\138\5\153\36", "\204\217\108\227\65\98\85")]=UDim2.fromOffset(2160 - (1295 + 165), 126 + 424),[v7("\113\211\240\235\14\213\74\215\250\235", "\160\62\163\149\133\76")]={[v7("\226\169\25\35\198", "\163\182\192\109\79")]=v7("\27\54\5\206\181\26\35\24\207\231\53\30", "\149\84\70\96\160"),[v7("\29\8\12\239\52\3\9", "\141\88\102\109")]=true,[v7("\151\65\203\119\29\60\87\205\182", "\161\211\51\170\16\122\93\53")]=true,[v7("\212\160\190\49\214\161\176\33\247\171", "\72\155\206\210")]=false}});
v83:Tag({[v7("\114\115\64\2\54", "\83\38\26\52\110")]=((v20 and v7("\78\68\105\22\22\71\103\90\24\58\40\68\81\27\34", "\38\56\119\71")) or v7("\229\188\22\134\107\6\179\243\24\230\6", "\54\147\143\56\182\69")),[v7("\255\130\240\71", "\191\182\225\159\41")]=v7("\44\27\60\93\158\133", "\162\75\114\72\53\235\231"),[v7("\175\51\72\237\65", "\98\236\92\36\130\51")]=Color3.fromHex(v7("\231\31\10\233\21\253\177", "\80\196\121\108\218\37\200\213"))});
local v84 = v83:Section({[v7("\52\122\22\115\78", "\234\96\19\98\31\43\110")]=v7("\39\22\95\197\163\102", "\235\102\127\50\167\204\18"),[v7("\121\162\250\45", "\78\48\193\149\67\36")]=v7("\51\12\143\11\82\56\31\137\10", "\33\80\126\224\120")});
local v85 = v84:Tab({[v7("\216\161\23\200\89", "\60\140\200\99\164")]=v7("\170\245\13\40", "\194\231\148\100\70"),[v7("\111\79\206\173", "\168\38\44\161\195\150")]=v7("\148\253\144\113\53\252", "\118\224\156\226\22\80\136\214")});
v85:Paragraph({[v7("\118\231\77\140\71", "\224\34\142\57")]=v7("\238\171\196\201\117\254\79\3", "\110\190\199\165\189\19\145\61"),[v7("\254\238\100\235", "\167\186\139\23\136\235")]=((v20 and v7("\55\186\138\4\22\176\200\32\21\177\141\77\59\182\156\4\12\176\200\64\90\128\155\8\90\186\134\64\9\182\154\8\31\187\200\15\15\161\156\2\20", "\109\122\213\232")) or v7("\222\212\226\29\225\243\167\112\207\244\182\57\248\242\226\125\174\194\177\53\174\250\173\37\253\242\226\63\252\183\161\53\224\227\167\34\174\251\173\51\229", "\80\142\151\194"))});
v85:Space();
v85:Toggle({[v7("\37\202\118\75", "\44\99\166\23")]=v7("\93\254\36\52\60\176\89\249\40\52\63\161\120", "\196\28\151\73\86\83"),[v7("\199\10\61\28\135", "\22\147\99\73\112\226\56\120")]=v7("\153\124\239\247\130\172", "\237\216\21\130\149"),[v7("\166\75\76\92", "\62\226\46\63\63\208\169")]=((v20 and v7("\192\23\84\129\19\8\111\95\236\20\87\140\11\77\103\75\246\28\21\140\17\64\60\93\247\28\80\141\95\15\58\74\241\22\91\202", "\62\133\121\53\227\127\109\79")) or v7("\35\25\61\250\194\166\226\17\29\63\247\217\186\226\4\28\51\225\150\163\173\6\17\33\181\213\175\175\21\6\51\181\194\161\226\4\21\32\242\211\186", "\194\112\116\82\149\182\206")),[v7("\29\173\74\25\213\238\26", "\110\89\200\44\120\160\130")]=false,[v7("\136\194\71\74\65\75\56\70", "\45\203\163\43\38\35\42\91")]=function(v162)
	local FlatIdent_5C5DB = 0;
	local v163;
	while true do
		if (FlatIdent_5C5DB == 0) then
			v163 = 0 + 0;
			while true do
				if (v163 == (1398 - (819 + 578))) then
					if v20 then
						if v162 then
							v74();
						else
							v75();
						end
					elseif v162 then
						v72();
					else
						v73();
					end
					break;
				end
				if (v163 == (1402 - (331 + 1071))) then
					local FlatIdent_2595D = 0;
					while true do
						if (FlatIdent_2595D == 0) then
							v22 = v162;
							if v51 then
								v51.Visible = v22 or v23;
							end
							FlatIdent_2595D = 1;
						end
						if (FlatIdent_2595D == 1) then
							v163 = 1;
							break;
						end
					end
				end
			end
			break;
		end
	end
end});
v85:Space();
if v21 then
	local FlatIdent_65844 = 0;
	local v224;
	while true do
		if (FlatIdent_65844 == 0) then
			v224 = 0;
			while true do
				if (v224 == (743 - (588 + 155))) then
					v85:Dropdown({[v7("\244\137\221\36", "\52\178\229\188\67\231\201")]=v7("\0\72\93\6\248\72\14\46\69\85", "\67\65\33\48\100\151\60"),[v7("\235\238\186\212\246", "\147\191\135\206\184")]=v7("\165\33\171\195\215\71\242\169\39\162\196", "\210\228\72\198\161\184\51"),[v7("\18\76\224\19", "\174\86\41\147\112\19")]=v7("\120\5\131\31\32\29\81\246\27\51\142\25\32\10\31\235\88\5\131\31\32\29\93\235\118\15\152\24\32\79\76\235\117\5\140\25\101\12\4\185\72\15\159", "\203\59\96\237\107\69\111\113"),[v7("\18\23\160\244\52\227", "\183\68\118\204\129\81\144")]={v7("\45\168\126\240\14\144", "\226\110\205\16\132\107"),v7("\198\204\245\202\68", "\33\139\163\128\185")},[v7("\97\89\8\203\82", "\190\55\56\100")]=v7("\117\170\50\10\22\241", "\147\54\207\92\126\115\131"),[v7("\46\48\57\113\15\127\14\58", "\30\109\81\85\29\109")]=function(v337)
						v31 = v337;
					end});
					v85:Space();
					break;
				end
			end
			break;
		end
	end
end
v85:Toggle({[v7("\217\125\85\177", "\156\159\17\52\214\86\190")]=v7("\157\230\177\185\160\251\156\181\163\202\179\189\172\227\184\184", "\220\206\143\221"),[v7("\178\116\57\27\221", "\178\230\29\77\119\184\172")]=v7("\198\183\6\30\121\236\181\159\3\22", "\152\149\222\106\123\23"),[v7("\249\35\229\64", "\213\189\70\150\35")]=v7("\125\80\112\1\93\80\119\28\92\21\118\29\67\89\113\28\92\21\96\7\15\65\117\26\72\80\96\72\88\92\96\0\64\64\96\72\66\90\98\1\65\82\52\11\78\88\113\26\78", "\104\47\53\20"),[v7("\135\73\135\29\169\3\183", "\111\195\44\225\124\220")]=false,[v7("\251\71\12\127\169\170\219\77", "\203\184\38\96\19\203")]=function(v164)
	local FlatIdent_1ADAD = 0;
	local v165;
	while true do
		if (FlatIdent_1ADAD == 0) then
			v165 = 1937 - (1834 + 103);
			while true do
				if (v165 == 0) then
					local FlatIdent_397EE = 0;
					while true do
						if (FlatIdent_397EE == 1) then
							v165 = 1;
							break;
						end
						if (FlatIdent_397EE == 0) then
							v23 = v164;
							if v51 then
								v51.Visible = v22 or v23;
							end
							FlatIdent_397EE = 1;
						end
					end
				end
				if (v165 == (1 + 0)) then
					if v164 then
						local FlatIdent_7CC7D = 0;
						local v339;
						local v340;
						while true do
							if (FlatIdent_7CC7D == 0) then
								v339 = 0;
								v340 = nil;
								FlatIdent_7CC7D = 1;
							end
							if (FlatIdent_7CC7D == 1) then
								while true do
									if (v339 == (0 - 0)) then
										v340 = 0;
										while true do
											if (v340 == 1) then
												v53 = v12.Heartbeat:Connect(v71);
												break;
											end
											if (v340 == (1766 - (1536 + 230))) then
												v70();
												if v53 then
													v53:Disconnect();
												end
												v340 = 492 - (128 + 363);
											end
										end
										break;
									end
								end
								break;
							end
						end
					else
						local FlatIdent_387AE = 0;
						local v341;
						while true do
							if (FlatIdent_387AE == 0) then
								v341 = 0;
								while true do
									if (v341 == (0 + 0)) then
										local FlatIdent_41EB8 = 0;
										while true do
											if (FlatIdent_41EB8 == 1) then
												v341 = 1 - 0;
												break;
											end
											if (FlatIdent_41EB8 == 0) then
												if v53 then
													local FlatIdent_82DBD = 0;
													local v502;
													local v503;
													while true do
														if (FlatIdent_82DBD == 0) then
															v502 = 0;
															v503 = nil;
															FlatIdent_82DBD = 1;
														end
														if (FlatIdent_82DBD == 1) then
															while true do
																if (v502 == (0 - 0)) then
																	v503 = 0;
																	while true do
																		if (v503 == (0 + 0)) then
																			v53:Disconnect();
																			v53 = nil;
																			break;
																		end
																	end
																	break;
																end
															end
															break;
														end
													end
												end
												v68 = nil;
												FlatIdent_41EB8 = 1;
											end
										end
									end
									if (v341 == (2 - 1)) then
										v69 = nil;
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
v85:Space();
v85:Slider({[v7("\31\127\120\70", "\174\89\19\25\33")]=v7("\28\27\94\75\249\147\42\38\31\122\71\227\164\3\46\28\81\75", "\107\79\114\50\46\151\231"),[v7("\13\175\161\37\143", "\160\89\198\213\73\234\89\215")]=v7("\123\120\184\251\203\92\49\149\247\200\8\89\189\234\133\107\121\181\240\198\77", "\165\40\17\212\158"),[v7("\193\220\27\48", "\70\133\185\104\83")]=v7("\52\64\86\41\204\10\81\69\45\204\68\74\66\106\218\12\74\80\57\137\16\77\69\62\137\19\76\72\38\137\22\64\64\35\219\1\70\80", "\169\100\37\36\74"),[v7("\51\147\167\64", "\48\96\231\194")]=(12 - 7),[v7("\254\91\2\56\28", "\227\168\58\110\77\121\184\207")]={[v7("\86\53\177", "\197\27\92\223\32\209\187\17")]=0,[v7("\46\94\219", "\155\99\63\163")]=(69 + 31),[v7("\166\212\167\140\172\136\150", "\228\226\177\193\237\217")]=(1109 - (615 + 394))},[v7("\23\177\47\234\54\177\32\237", "\134\84\208\67")]=function(v166)
	v30 = v166;
end});
v85:Space();
v85:Slider({[v7("\53\160\135\91", "\60\115\204\230")]=v7("\198\51\230\114\232\46\216\125\232\53\255\120\233\63\248\99", "\16\135\90\139"),[v7("\96\125\18\63\75", "\24\52\20\102\83\46\52")]=v7("\247\34\46\43\27\204\33\36\55\28", "\111\164\79\65\68"),[v7("\226\220\144\221", "\138\166\185\227\190\78")]=v7("\154\52\152\119\97\46\22\196\96\205\123\18\114\73\139\41\133\30\92\48\13\202\122\209\119\26\2\16\198\118\202\35\18\44\23\199\109\140", "\121\171\20\165\87\50\67"),[v7("\245\44\188\38", "\98\166\88\217\86\217")]=(1 + 0),[v7("\192\247\117\20\131", "\188\150\150\25\97\230")]={[v7("\247\128\81", "\141\186\233\63\98\108")]=(1 + 0),[v7("\220\235\52", "\69\145\138\76\214")]=10,[v7("\84\202\143\136\170\26\100", "\118\16\175\233\233\223")]=(2 - 1)},[v7("\168\133\57\183\236\138\126\128", "\29\235\228\85\219\142\235")]=function(v167)
	v24 = v167;
end});
v85:Space();
v85:Slider({[v7("\27\216\187\218", "\50\93\180\218\189\23\46\71")]=v7("\255\173\86\78\75\200\110\241\146", "\40\190\196\59\44\36\188"),[v7("\8\76\200\184\255", "\109\92\37\188\212\154\29")]=v7("\34\192\146", "\58\100\143\196\163\81"),[v7("\62\71\48\160", "\110\122\34\67\195\95\41\133")]=v7("\83\184\94\70\210\53\190\93\10\192\124\180\76\10\208\122\163\27\94\215\103\182\94\94\223\123\182", "\182\21\209\59\42"),[v7("\132\67\192\13", "\222\215\55\165\125\65")]=(22 - 17),[v7("\26\208\202\15\247", "\42\76\177\166\122\146\161\141")]={[v7("\136\131\11", "\22\197\234\101\174\25")]=30,[v7("\0\53\189", "\230\77\84\197\188\22\207\183")]=(1151 - (59 + 592)),[v7("\221\17\192\253\153\173\228", "\85\153\116\166\156\236\193\144")]=(398 - 218)},[v7("\135\225\65\191\230\1\167\235", "\96\196\128\45\211\132")]=function(v168)
	local FlatIdent_24BE7 = 0;
	local v169;
	while true do
		if (FlatIdent_24BE7 == 0) then
			v169 = 0 - 0;
			while true do
				if (v169 == 0) then
					v25 = v168;
					v64();
					break;
				end
			end
			break;
		end
	end
end});
v85:Space();
v85:Dropdown({[v7("\19\129\122\88", "\184\85\237\27\63\178\207\212")]=v7("\41\80\4\111\9\75\29", "\63\104\57\105"),[v7("\63\142\176\72\14", "\36\107\231\196")]=v7("\124\188\175\199\109\180\176\147", "\231\61\213\194"),[v7("\45\168\46\112", "\19\105\205\93")]=v7("\158\0\215\130\55\233\10\209\133\38\233\24\223\147\43\233\28\209\193\43\168\26\217\132\43", "\95\201\104\190\225"),[v7("\153\202\205\219\170\216", "\174\207\171\161")]={v7("\197\251\12\247", "\183\141\158\109\147\152"),v7("\4\28\235\13\34\6\239\8\30\6\233\24\28\8\244\24", "\108\76\105\134"),v7("\223\202\163\242\193", "\174\139\165\209\129"),v7("\143\182\228\213\231\17\125", "\24\195\211\130\161\166\99\16"),v7("\116\10\238\36\71\55\84\14", "\118\38\99\137\76\51"),v7("\209\35\3\6\37\37\250", "\64\157\70\101\114\105"),v7("\114\161\160\235\4\108\173\160", "\112\32\200\199\131")},[v7("\26\81\80\173\198", "\66\76\48\60\216\163\203")]=v7("\146\131\120\247", "\68\218\230\25\147\63\174"),[v7("\142\43\95\64\180\172\41\88", "\214\205\74\51\44")]=function(v170)
	v26 = v170;
end});
local v86 = v84:Tab({[v7("\206\69\246\240\114", "\23\154\44\130\156")]=v7("\34\163\185\186\63\29\22\181", "\115\113\198\205\206\86"),[v7("\173\84\241\84", "\58\228\55\158")]=v7("\167\140\196\58\53\163\50\167", "\85\212\233\176\78\92\205")});
v86:Toggle({[v7("\108\84\137\229", "\130\42\56\232")]=v7("\222\176\37\238\99\55\239\182\47\194\73\50\232\186\48", "\95\138\213\68\131\32"),[v7("\30\33\181\79\115", "\22\74\72\193\35")]=v7("\24\124\229\85\108\90\236\93\47\114", "\56\76\25\132"),[v7("\122\196\184\37", "\175\62\161\203\70")]=v7("\21\218\205\28\39\57\157\215\22\52\49\208\194\7\48\47", "\85\92\189\163\115"),[v7("\13\169\54\57\60\160\36", "\88\73\204\80")]=false,[v7("\13\130\28\74\43\219\45\136", "\186\78\227\112\38\73")]=function(v171)
	v27 = v171;
end});
v86:Space();
v86:Toggle({[v7("\218\91\252\82", "\26\156\55\157\53\51")]=v7("\187\217\26\213\155\88\137\219\29", "\48\236\184\118\185\216"),[v7("\209\180\67\60\202", "\84\133\221\55\80\175")]=v7("\138\230\40\170\135\127\181\226\39\173", "\60\221\135\68\198\167"),[v7("\202\184\235\128", "\185\142\221\152\227\34")]=v7("\119\203\91\227\3\39\246\74\194\82\238\3\37\254\75\204\85\246\70\115\231\84\196\78\255\81\32", "\151\56\165\55\154\35\83"),[v7("\132\70\3\239\181\79\17", "\142\192\35\101")]=false,[v7("\245\116\37\175\229\141\175\29", "\118\182\21\73\195\135\236\204")]=function(v172)
	v28 = v172;
end});
v86:Space();
v86:Toggle({[v7("\46\48\27\71", "\157\104\92\122\32\100\109")]=v7("\135\163\206\206\30\47\136\168\168", "\203\195\198\175\170\93\71\237"),[v7("\26\66\42\217\84", "\156\78\43\94\181\49\113")]=v7("\86\237\197\167\75\96\113\119\235\207", "\25\18\136\164\195\107\35"),[v7("\204\40\186\76", "\216\136\77\201\47\18\220\161")]=v7("\4\235\37\213\26\217\194\41\233\42\222\71\216\141\58\226\107\202\4\221\155\40\254\56", "\226\77\140\75\186\104\188"),[v7("\157\203\214\62\90\181\218", "\47\217\174\176\95")]=false,[v7("\155\220\122\14\176\85\123\45", "\70\216\189\22\98\210\52\24")]=function(v173)
	v29 = v173;
end});
v86:Space();
v86:Dropdown({[v7("\252\211\162\128", "\179\186\191\195\231")]=v7("\223\16\46\199\240\45\27\232\252\28\23\232\246\45", "\132\153\95\120"),[v7("\133\187\26\33\242", "\192\209\210\110\77\151\186")]=v7("\198\44\20\169\220\205\242\0\46\236\191\231\239\15\45\251", "\164\128\99\66\137\159"),[v7("\36\140\250\189", "\222\96\233\137")]=v7("\154\187\166\17\143\246\176\159\156\145\95\139\250\226\186\191\162\95\139\252\252\182\161", "\144\217\211\199\127\232\147"),[v7("\206\46\50\61\208\86", "\36\152\79\94\72\181\37\98")]={v7("\224\208\78\43\210", "\95\183\184\39"),v7("\135\58\227", "\98\213\95\135\70\52\224"),v7("\217\177\204\114\90", "\52\158\195\169\23"),v7("\88\176\39\113", "\235\26\220\82\20\230\85\27"),v7("\177\164\229\206\123\159", "\20\232\193\137\162"),v7("\15\222\194\163\233\152\22", "\17\66\191\165\198\135\236\119")},[v7("\57\174\162\6\250", "\177\111\207\206\115\159\136\140")]=v7("\50\129\25\0\209", "\63\101\233\112\116\180\47"),[v7("\224\58\225\30\250\55\192\48", "\86\163\91\141\114\152")]=function(v174)
	local FlatIdent_900D9 = 0;
	local v175;
	local v176;
	while true do
		if (FlatIdent_900D9 == 0) then
			v175 = 0 + 0;
			v176 = nil;
			FlatIdent_900D9 = 1;
		end
		if (FlatIdent_900D9 == 1) then
			while true do
				if (v175 == 1) then
					v51.Color = v176[v174];
					break;
				end
				if (v175 == (0 + 0)) then
					local FlatIdent_7BF98 = 0;
					while true do
						if (FlatIdent_7BF98 == 0) then
							if not v51 then
								return;
							end
							v176 = {[v7("\100\3\125\103\63", "\90\51\107\20\19")]=Color3.new(1400 - (653 + 746), 1 - 0, 1),[v7("\191\245\129", "\93\237\144\229\143")]=Color3.new(1 - 0, 0, 0 - 0),[v7("\50\228\245\28\5", "\38\117\150\144\121\107")]=Color3.new(0 + 0, 1, 0 + 0),[v7("\15\183\251\63", "\90\77\219\142")]=Color3.new(0 + 0, 0 + 0, 1),[v7("\223\1\45\53\67\16", "\26\134\100\65\89\44\103")]=Color3.new(1, 1 + 0, 0 - 0),[v7("\220\226\55\38\170\229\226", "\196\145\131\80\67")]=Color3.new(1 + 0, 0, 1 - 0)};
							FlatIdent_7BF98 = 1;
						end
						if (FlatIdent_7BF98 == 1) then
							v175 = 1;
							break;
						end
					end
				end
			end
			break;
		end
	end
end});
local v87 = v83:Section({[v7("\42\185\18\4\29", "\136\126\208\102\104\120")]=v7("\78\131\221\86\174\94\46", "\49\24\234\174\35\207\50\93"),[v7("\37\241\242\134", "\17\108\146\157\232")]=v7("\78\218\17", "\200\43\163\116\141\79")});
local v88 = v87:Tab({[v7("\139\63\41\143\181", "\131\223\86\93\227\208\148")]=v7("\198\118\134", "\213\131\37\214\214\125"),[v7("\15\40\42\177", "\129\70\75\69\223")]=v7("\68\196\235\164\111\234\74\206\240\253", "\143\38\171\147\137\28")});
v88:Toggle({[v7("\246\142\184\244", "\180\176\226\217\147\99\131")]=v7("\241\182\55\34\224\137", "\103\179\217\79"),[v7("\126\190\8\217\68", "\195\42\215\124\181\33\236")]=v7("\47\86\47\126\0\203\61", "\152\109\57\87\94\69"),[v7("\221\210\25\160", "\200\153\183\106\195\222\178\52")]=v7("\22\241\137\42\9\88\61\251\141\46\9\91\32\236\157\51\77\26\34\239\137\36\76\72\33", "\58\82\131\232\93\41"),[v7("\167\82\214\20\72\51\151", "\95\227\55\176\117\61")]=false,[v7("\59\127\47\71\169\25\125\40", "\203\120\30\67\43")]=function(v177)
	local FlatIdent_10BCD = 0;
	while true do
		if (FlatIdent_10BCD == 0) then
			v32 = v177;
			updateESPState();
			break;
		end
	end
end});
v88:Space();
v88:Toggle({[v7("\215\41\76\232", "\185\145\69\45\143")]=v7("\164\30\20\163\249\185\47", "\188\234\127\121\198"),[v7("\12\59\7\143\61", "\227\88\82\115")]=v7("\109\30\183\162\66\86\112\47", "\19\35\127\218\199\98"),[v7("\56\254\25\225", "\130\124\155\106")]=v7("\230\195\249\184\227\230\112\190\204\206\228\239\173\247\113\186\198", "\223\181\171\150\207\195\150\28"),[v7("\104\63\229\175\28\64\46", "\105\44\90\131\206")]=false,[v7("\220\225\190\181\10\63\252\235", "\94\159\128\210\217\104")]=function(v178)
	local FlatIdent_5D905 = 0;
	local v179;
	while true do
		if (FlatIdent_5D905 == 0) then
			v179 = 0;
			while true do
				if (v179 == 0) then
					v34 = v178;
					updateESPState();
					break;
				end
			end
			break;
		end
	end
end});
v88:Space();
v88:Toggle({[v7("\118\245\7\184", "\26\48\153\102\223\63\31\153")]=v7("\42\69\236\255\22\72\200\192\50", "\147\98\32\141"),[v7("\44\74\247\198\3", "\43\120\35\131\170\102\54")]=v7("\124\3\134\186\177\184\196\113\53\183", "\228\52\102\231\214\197\208"),[v7("\58\229\102\201", "\182\126\128\21\170\138\235\121")]=v7("\184\210\58\241\198\3\60\7\146\223\39\166\142\22\49\10\159\210", "\102\235\186\85\134\230\115\80"),[v7("\115\9\56\94\103\216\54", "\66\55\108\94\63\18\180")]=false,[v7("\55\140\137\59\37\88\23\134", "\57\116\237\229\87\71")]=function(v180)
	local FlatIdent_61610 = 0;
	while true do
		if (0 == FlatIdent_61610) then
			v35 = v180;
			updateESPState();
			break;
		end
	end
end});
v88:Space();
v88:Toggle({[v7("\140\189\236\224", "\39\202\209\141\135\23\142")]=v7("\219\58\26\30\51\246\252\54\44\57\2", "\152\159\83\105\106\82"),[v7("\181\207\69\254\204", "\60\225\166\49\146\169")]=v7("\11\23\60\62\0\9\44\27\111\15\50\55", "\103\79\126\79\74\97"),[v7("\158\122\192\112", "\122\218\31\179\19\62")]=v7("\128\222\194\214\137\165\76\160\194\204\207\202\164\5\167\217\141\209\197\160\92\182\196\222", "\37\211\182\173\161\169\193"),[v7("\211\63\75\216\61\119\173", "\217\151\90\45\185\72\27")]=false,[v7("\224\125\235\30\84\194\127\236", "\54\163\28\135\114")]=function(v181)
	local FlatIdent_53FA2 = 0;
	local v182;
	while true do
		if (FlatIdent_53FA2 == 0) then
			v182 = 1234 - (885 + 349);
			while true do
				if (v182 == (0 + 0)) then
					v36 = v181;
					updateESPState();
					break;
				end
			end
			break;
		end
	end
end});
v88:Space();
v88:Toggle({[v7("\14\215\92\133", "\31\72\187\61\226\46")]=v7("\247\20\66\209\66\108\1\240\54", "\68\163\102\35\178\39\30"),[v7("\138\121\206\203\6", "\113\222\16\186\167\99\213\227")]=v7("\26\28\250\245\43\28\187\211\29\62", "\150\78\110\155"),[v7("\161\192\52\226", "\32\229\165\71\129\196\126\223")]=v7("\231\155\197\150\193\217\202\135\193\146\193\211\209\134\201\193\146\214\209\140\193\143\193\214\198\135\208\132\147\149\215\134\132\145\141\212\218\140\214\146", "\181\163\233\164\225\225"),[v7("\116\142\56\118\69\135\42", "\23\48\235\94")]=false,[v7("\95\219\212\81\85\50\209\119", "\178\28\186\184\61\55\83")]=function(v183)
	local FlatIdent_57FF4 = 0;
	local v184;
	while true do
		if (FlatIdent_57FF4 == 0) then
			v184 = 0;
			while true do
				if (v184 == (0 - 0)) then
					v37 = v183;
					updateESPState();
					break;
				end
			end
			break;
		end
	end
end});
v88:Space();
v88:Toggle({[v7("\226\193\70\59", "\149\164\173\39\92\146\110")]=v7("\192\44\21\19\31\15\252\41\53\44\42", "\123\147\71\112\127\122"),[v7("\248\196\150\125\67", "\38\172\173\226\17")]=v7("\126\26\41\227\72\5\35\225\13\52\31\223", "\143\45\113\76"),[v7("\156\189\15\63", "\92\216\216\124")]=v7("\127\32\173\87\189\75\62\173\89\248\73\114\191\75\248\87\55\184\79\243\72", "\157\59\82\204\32"),[v7("\28\59\229\251\252\230\199", "\209\88\94\131\154\137\138\179")]=false,[v7("\11\160\200\112\28\34\50\41", "\66\72\193\164\28\126\67\81")]=function(v185)
	local v186 = 0;
	while true do
		if (0 == v186) then
			v38 = v185;
			updateESPState();
			break;
		end
	end
end});
v88:Space();
v88:Toggle({[v7("\193\32\169\95", "\22\135\76\200\56\70")]=v7("\174\56\249\41\78", "\129\237\80\152\68\61"),[v7("\101\161\16\255\25", "\56\49\200\100\147\124\119")]=v7("\239\54\190\253\223", "\144\172\94\223"),[v7("\0\10\177\68", "\39\68\111\194")]=v7("\254\175\224\207\117\190\209\174\243\135\105\187\215\191\226\213\106\247\194\174\245\200\108\176\222\230\240\198\117\187\197", "\215\182\198\135\167\25"),[v7("\169\76\236\73\152\69\254", "\40\237\41\138")]=false,[v7("\228\117\246\244\72\198\119\241", "\42\167\20\154\152")]=function(v187)
	local FlatIdent_67777 = 0;
	local v188;
	while true do
		if (0 == FlatIdent_67777) then
			v188 = 0;
			while true do
				if (v188 == (0 - 0)) then
					v33 = v187;
					if v187 then
						local v342 = 968 - (915 + 53);
						while true do
							if (v342 == (801 - (768 + 33))) then
								for v486, v487 in ipairs(v11:GetPlayers()) do
									if (v487 ~= v17) then
										v80(v487);
									end
								end
								if not v55 then
									v55 = v12.Heartbeat:Connect(v82);
								end
								break;
							end
						end
					else
						local FlatIdent_694C5 = 0;
						while true do
							if (FlatIdent_694C5 == 0) then
								if v55 then
									local v422 = 0;
									while true do
										if ((0 - 0) == v422) then
											v55:Disconnect();
											v55 = nil;
											break;
										end
									end
								end
								for v398, v399 in pairs(v48) do
									v81(v398);
								end
								FlatIdent_694C5 = 1;
							end
							if (FlatIdent_694C5 == 1) then
								v48 = {};
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
local v89 = v87:Tab({[v7("\126\247\182\78\116", "\65\42\158\194\34\17")]=v7("\41\34\70\24\36\227\28\253", "\142\122\71\50\108\77\141\123"),[v7("\60\161\240\22", "\91\117\194\159\120")]=v7("\9\17\55\28\48\227\55\87\21\49\10\60\235\43\20\9\63\20", "\68\122\125\94\120\85\145")});
v89:Toggle({[v7("\49\16\206\89", "\218\119\124\175\62\168\185")]=v7("\128\195\120\240\160\241\69\231\173\245\75\207", "\164\197\144\40"),[v7("\183\249\190\135\216", "\214\227\144\202\235\189")]=v7("\217\160\134\118\80\144\91\57\238\174", "\92\141\197\231\27\112\211\51"),[v7("\194\250\153\160", "\177\134\159\234\195")]="Don't show teammates",[v7("\153\238\57\161\220\177\255", "\169\221\139\95\192")]=false,[v7("\253\138\115\51\32\39\221\128", "\70\190\235\31\95\66")]=function(v189)
	v43 = v189;
end});
v89:Space();
v89:Toggle({[v7("\156\238\27\225", "\133\218\130\122\134")]=v7("\25\204\211\243\221\175\52\31\247\230\199\215", "\88\92\159\131\164\188\195"),[v7("\180\39\171\71\210", "\189\224\78\223\43\183\139")]=v7("\25\253\134\26\129\13\244\143\21\202", "\161\78\156\234\118"),[v7("\131\178\218\223", "\188\199\215\169")]=v7("\211\7\83\98\168\239\1\80\108\168\234\0\76\114\234\240\12\31\107\228\253\16\90\105\251", "\136\156\105\63\27"),[v7("\63\137\127\53\14\128\109", "\84\123\236\25")]=false,[v7("\211\138\166\27\174\180\243\128", "\213\144\235\202\119\204")]=function(v190)
	v44 = v190;
end});
v89:Space();
v89:Toggle({[v7("\5\20\223\45", "\45\67\120\190\74\72\67")]=v7("\5\17\221\129\252\137\234\202\40\39\238\174", "\137\64\66\141\197\153\232\142"),[v7("\55\217\54\170\141", "\232\99\176\66\198")]=v7("\200\36\41\2\59\174\241\41\239\42", "\76\140\65\72\102\27\237\153"),[v7("\110\223\5\209", "\222\42\186\118\178\183\97")]="Don't show dead/down players",[v7("\121\233\66\139\72\224\80", "\234\61\140\36")]=false,[v7("\2\220\182\126\13\32\222\177", "\111\65\189\218\18")]=function(v191)
	v45 = v191;
end});
v89:Space();
v89:Slider({[v7("\101\71\26\50", "\207\35\43\123\85\107\60")]=v7("\93\171\184\207\74\64\142\169\249\109\113\164\163\239", "\25\16\202\192\138"),[v7("\201\194\185\238\172", "\148\157\171\205\130\201")]=v7("\14\213\108\105\245\255\48\192\117\39\210\243", "\150\67\180\20\73\177"),[v7("\169\29\9\78", "\45\237\120\122")]=v7("\250\233\186\37\218\253\175\108\211\225\177\56\214\230\161\41\151\252\173\108\196\224\173\59\151\205\145\28", "\76\183\136\194"),[v7("\73\242\224\40", "\116\26\134\133\88\48\47")]=50,[v7("\40\192\172\241\184", "\18\126\161\192\132\221")]={[v7("\114\33\160", "\54\63\72\206\100")]=(176 - 76),[v7("\229\88\93", "\27\168\57\37\26\133")]=(5328 - (287 + 41)),[v7("\9\175\122\169\194\33\190", "\183\77\202\28\200")]=(1847 - (638 + 209))},[v7("\52\50\133\4\21\50\138\3", "\104\119\83\233")]=function(v192)
	v46 = v192;
end});
v89:Space();
v89:Colorpicker({[v7("\211\244\38\37", "\35\149\152\71\66")]=v7("\59\231\90\147\53\21\231\80", "\90\121\136\34\208"),[v7("\243\7\65\18\194", "\126\167\110\53")]=v7("\31\31\54\184\255\48\49\31\60", "\95\93\112\78\152\188"),[v7("\229\240\150\22", "\178\161\149\229\117\132\222")]=v7("\171\212\209\163\179\86\169\37\200\254\238\156\225\20\169\59\141\200", "\67\232\187\189\204\193\118\198"),[v7("\175\43\179\33\46\14\251", "\143\235\78\213\64\91\98")]=Color3.fromRGB(133 + 122, 0, 1686 - (96 + 1590)),[v7("\185\90\133\231\99\166\140\90\129\231\115\175", "\214\237\40\228\137\16")]=(1672 - (741 + 931)),[v7("\166\226\227\213\1\167\134\232", "\198\229\131\143\185\99")]=function(v193)
	v39 = v193;
end});
v89:Space();
v89:Colorpicker({[v7("\119\128\169\116", "\19\49\236\200")]=v7("\221\63\247\186\247\153\241\59\249\165", "\218\158\87\150\215\132"),[v7("\207\23\205\238\51", "\173\155\126\185\130\86\66")]=v7("\198\174\187\202\155\172\198\169\182\200\154", "\140\133\198\218\167\232"),[v7("\145\43\167\126", "\228\213\78\212\29")]=v7("\164\67\186\10\249\199\67\176\69\232\143\77\187\22\171\143\69\177\13\231\142\75\190\17", "\139\231\44\214\101"),[v7("\253\234\0\95\5\189\37", "\118\185\143\102\62\112\209\81")]=Color3.fromRGB(126 + 129, 0 - 0, 0),[v7("\104\98\40\232\182\5\29\42\89\126\42\255", "\88\60\16\73\134\197\117\124")]=(0 - 0),[v7("\115\235\244\196\67\81\233\243", "\33\48\138\152\168")]=function(v194)
	v40 = v194;
end});
v89:Space();
v89:Colorpicker({[v7("\84\26\49\86", "\87\18\118\80\49\161")]=v7("\120\12\219\163\181\94\61\213\172\191\94", "\208\44\126\186\192"),[v7("\195\19\176\202\17", "\46\151\122\196\166\116\156\169")]=v7("\209\255\71\25\254\247\173\101\21\247\234\255", "\155\133\141\38\122"),[v7("\1\47\191\66", "\197\69\74\204\33\47\31")]=v7("\211\64\86\136\226\15\85\129\176\91\72\134\243\74\72\199\252\70\84\130\227", "\231\144\47\58"),[v7("\150\221\220\116\13\49\219", "\89\210\184\186\21\120\93\175")]=Color3.fromRGB(110 + 145, 110 + 145, 255),[v7("\133\65\125\219\106\42\176\65\121\219\122\35", "\90\209\51\28\181\25")]=(0 + 0),[v7("\243\122\91\226\189\209\120\92", "\223\176\27\55\142")]=function(v195)
	v41 = v195;
end});
v89:Space();
v89:Colorpicker({[v7("\2\183\207\178", "\213\68\219\174")]=v7("\56\235\38\235\47\209\48\113\40\239\47\232\56", "\31\107\128\67\135\74\165\95"),[v7("\236\225\232\65\68", "\209\184\136\156\45\33")]=v7("\52\195\112\4\189\19\199\123\72\155\8\196\122\26", "\216\103\168\21\104"),[v7("\92\168\80\167", "\196\24\205\35")]=v7("\13\132\239\9\60\203\236\0\110\152\232\3\34\142\247\9\32\203\239\15\32\142\240", "\102\78\235\131"),[v7("\222\43\50\69\82\53\163", "\84\154\78\84\36\39\89\215")]=Color3.fromRGB(967 - 712, 255, 83 + 172),[v7("\201\243\87\86\22\237\224\68\93\11\254\248", "\101\157\129\54\56")]=0,[v7("\62\168\134\167\33\120\30\162", "\25\125\201\234\203\67")]=function(v196)
	v42 = v196;
end});
v89:Space();
v89:Slider({[v7("\95\248\25\4", "\115\25\148\120\99\116\71")]=v7("\41\14\137\16\68\20\41\138\45\91\9", "\33\108\93\217\68"),[v7("\239\66\181\161\222", "\205\187\43\193")]=v7("\202\119\29\203\190\65\12\197\251", "\191\158\18\101"),[v7("\225\198\148\180", "\207\165\163\231\215")]=v7("\245\240\227\83\100\127\192\185\220\101\20\48\210\252\225\66", "\16\166\153\153\54\68"),[v7("\225\167\197\86", "\153\178\211\160\38\84\65")]=(1 + 0),[v7("\180\10\86\62\135", "\75\226\107\58")]={[v7("\117\215\31", "\173\56\190\113\26\113\162")]=(32 - 24),[v7("\230\223\53", "\151\171\190\77\101")]=24,[v7("\225\42\254\168\237\113\31", "\107\165\79\152\201\152\29")]=14},[v7("\116\79\228\199\86\126\84\69", "\31\55\46\136\171\52")]=function(v197)
	for v225, v226 in pairs(v47) do
		local v227 = 0 + 0;
		while true do
			if (v227 == (494 - (64 + 430))) then
				local FlatIdent_890DA = 0;
				while true do
					if (0 == FlatIdent_890DA) then
						v226.name.Size = v197;
						v226.health.Size = v197 - (2 + 0);
						FlatIdent_890DA = 1;
					end
					if (FlatIdent_890DA == 1) then
						v227 = 1;
						break;
					end
				end
			end
			if (v227 == 1) then
				v226.distance.Size = v197 - (367 - (106 + 257));
				break;
			end
		end
	end
end});
local v90 = v83:Section({[v7("\229\33\200\248\212", "\148\177\72\188")]=v7("\149\179\67\199\175\184\80\192", "\179\198\214\55"),[v7("\217\15\125\120", "\179\144\108\18\22\37")]=v7("\197\172\28", "\175\166\195\123\233")});
local v91 = v90:Tab({[v7("\219\203\73\69\245", "\144\143\162\61\41")]=v7("\195\220\19\86\123\128", "\83\128\179\125\48\18\231"),[v7("\116\180\252\211", "\126\61\215\147\189\39")]=v7("\107\254\11\64", "\37\24\159\125")});
local v92 = v83.ConfigManager;
local v93 = v7("\222\163\115\67\207\170\97", "\34\186\198\21");
local v94 = v91:Input({[v7("\204\1\209\81\199", "\162\152\104\165\61")]=v7("\238\32\188\123\121\226\141\1\179\112\117", "\133\173\79\210\29\16"),[v7("\164\127\226\37", "\75\237\28\141")]=v7("\218\86\192\180\98\24\232\230", "\129\188\63\172\209\79\123\135"),[v7("\99\229\234\193\66\229\229\198", "\173\32\132\134")]=function(v198)
	v93 = v198;
end});
v91:Dropdown({[v7("\122\18\28\227\171", "\173\46\123\104\143\206\81")]=v7("\149\17\46\202\102\140\15\178\20\37\153", "\97\212\125\66\234\37\227"),[v7("\174\230\165\54", "\126\234\131\214\85")]=v7("\183\208\69\95\76\144\149\76\66\70\151\193\64\84\72\196\214\70\84\73\141\210\90", "\47\228\181\41\58"),[v7("\144\253\213\46\6\35", "\127\198\156\185\91\99\80")]=v92:AllConfigs(),[v7("\214\27\192\252\165\10\58\213", "\190\149\122\172\144\199\107\89")]=function(v199)
	local FlatIdent_1466E = 0;
	local v200;
	while true do
		if (FlatIdent_1466E == 0) then
			v200 = 0;
			while true do
				if (v200 == 0) then
					v93 = v199;
					v94:Set(v199);
					break;
				end
			end
			break;
		end
	end
end});
v91:Space();
v91:Button({[v7("\6\12\229\242\251", "\158\82\101\145\158")]=v7("\67\255\20\19\4\83\241\12\16\77\119", "\36\16\158\98\118"),[v7("\233\21\204\245", "\133\160\118\163\155\56\136\71")]=v7("\229\163\103\247", "\213\150\194\17\146\214\127"),[v7("\49\188\183\192\79\162\187", "\86\123\201\196\180\38\196\194")]=v7("\212\237\215\187\242\250", "\207\151\136\185"),[v7("\139\130\36\142\118\121\114\163", "\17\200\227\72\226\20\24")]=function()
	local FlatIdent_7CF06 = 0;
	while true do
		if (FlatIdent_7CF06 == 0) then
			v83.CurrentConfig = v92:CreateConfig(v93);
			if v83.CurrentConfig:Save() then
				v8:Notify({[v7("\132\72\15\219\204", "\159\208\33\123\183\169\145\143")]=v7("\209\85\54\48\251\93\120\5\243\76\61\50", "\86\146\58\88"),[v7("\124\218\249\195", "\154\56\191\138\160\206\137\86")]=("Config '" .. v93 .. "' saved"),[v7("\175\90\250\137", "\172\230\57\149\231\28\90\225")]=v7("\1\162\131\209\35", "\187\98\202\230\178\72")});
			end
			break;
		end
	end
end});
v91:Space();
v91:Button({[v7("\21\232\176\60\79", "\42\65\129\196\80")]=v7("\46\69\92\222\87\36\13\224\4\67\90", "\142\98\42\61\186\119\103\98"),[v7("\17\188\13\6", "\104\88\223\98")]=v7("\86\242\228\220\7\254\76\186\225\217", "\141\36\151\130\174\98"),[v7("\174\111\209\25\141\124\219", "\109\228\26\162")]=v7("\125\224\243\108\229\244", "\134\62\133\157\24\128"),[v7("\36\164\22\213\45\176\213\12", "\182\103\197\122\185\79\209")]=function()
	local FlatIdent_31822 = 0;
	local v202;
	while true do
		if (FlatIdent_31822 == 0) then
			v202 = 0 + 0;
			while true do
				if (0 == v202) then
					v83.CurrentConfig = v92:CreateConfig(v93);
					if v83.CurrentConfig:Load() then
						v8:Notify({[v7("\199\142\245\123\5", "\40\147\231\129\23\96")]=v7("\86\247\130\67\178\171\156\89\247\141\65\190\168", "\188\21\152\236\37\219\204"),[v7("\100\236\36\15", "\108\32\137\87")]=("Config '" .. v93 .. "' loaded"),[v7("\131\235\15\168", "\57\202\136\96\198\79\153\43")]=v7("\185\38\172\181\136\180\240\230\32\189", "\152\203\67\202\199\237\199")});
					end
					break;
				end
			end
			break;
		end
	end
end});
v91:Space();
v91:Button({[v7("\206\74\180\3\26", "\134\154\35\192\111\127\21\25")]=v7("\138\35\26\15\52\146\153\42\5", "\178\216\70\105\106\64"),[v7("\22\40\117\248", "\224\95\75\26\150\169\181\180")]=v7("\31\200\217\59\76\225\36", "\22\107\186\184\72\36\204"),[v7("\196\178\40\65\28", "\110\135\221\68\46")]=Color3.fromHex(v7("\160\48\10\184\158\230\63", "\91\131\86\108\139\174\211")),[v7("\209\62\171\3\84\253\50", "\61\155\75\216\119")]=v7("\39\174\188\40\93\27", "\189\100\203\210\92\56\105"),[v7("\12\80\241\36\45\80\254\35", "\72\79\49\157")]=function()
	local v203 = 0;
	while true do
		if (v203 == (723 - (496 + 225))) then
			v36 = false;
			v37 = false;
			v38 = false;
			v203 = 3;
		end
		if (v203 == (7 - 3)) then
			local FlatIdent_431E0 = 0;
			while true do
				if (FlatIdent_431E0 == 0) then
					v43 = false;
					v44 = false;
					FlatIdent_431E0 = 1;
				end
				if (FlatIdent_431E0 == 1) then
					v45 = false;
					v203 = 5;
					break;
				end
			end
		end
		if ((4 - 3) == v203) then
			v33 = false;
			v34 = false;
			v35 = false;
			v203 = 2;
		end
		if (v203 == (1658 - (256 + 1402))) then
			local FlatIdent_4BBF = 0;
			while true do
				if (FlatIdent_4BBF == 0) then
					v22 = false;
					v23 = false;
					FlatIdent_4BBF = 1;
				end
				if (FlatIdent_4BBF == 1) then
					v32 = false;
					v203 = 1900 - (30 + 1869);
					break;
				end
			end
		end
		if (v203 == 6) then
			if v55 then
				local FlatIdent_21CE5 = 0;
				local v343;
				while true do
					if (0 == FlatIdent_21CE5) then
						v343 = 1369 - (213 + 1156);
						while true do
							if (v343 == (188 - (96 + 92))) then
								v55:Disconnect();
								v55 = nil;
								break;
							end
						end
						break;
					end
				end
			end
			v75();
			for v327, v328 in pairs(v47) do
				v78(v327);
			end
			v203 = 2 + 5;
		end
		if (v203 == (902 - (142 + 757))) then
			v27 = false;
			v28 = false;
			v29 = false;
			v203 = 4 + 0;
		end
		if (v203 == (3 + 2)) then
			local FlatIdent_8849F = 0;
			while true do
				if (FlatIdent_8849F == 0) then
					v73();
					if v53 then
						local FlatIdent_41403 = 0;
						local v344;
						while true do
							if (FlatIdent_41403 == 0) then
								v344 = 79 - (32 + 47);
								while true do
									if (v344 == (1977 - (1053 + 924))) then
										v53:Disconnect();
										v53 = nil;
										break;
									end
								end
								break;
							end
						end
					end
					FlatIdent_8849F = 1;
				end
				if (FlatIdent_8849F == 1) then
					if v54 then
						local FlatIdent_45FBD = 0;
						local v345;
						while true do
							if (FlatIdent_45FBD == 0) then
								v345 = 0 + 0;
								while true do
									if (v345 == (0 - 0)) then
										v54:Disconnect();
										v54 = nil;
										break;
									end
								end
								break;
							end
						end
					end
					v203 = 1654 - (685 + 963);
					break;
				end
			end
		end
		if (v203 == 7) then
			for v329, v330 in pairs(v48) do
				v81(v329);
			end
			if v51 then
				v51.Visible = false;
			end
			v8:Notify({[v7("\188\185\37\176\141", "\220\232\208\81")]=v7("\199\187\246\53\56\26\130\250\179\245\60\41\78\164", "\193\149\222\133\80\76\58"),[v7("\226\88\92\209", "\178\166\61\47")]=v7("\218\70\228\58\204\59\250\94\253\104\207\45\187\78\225\105\203\60\247\79\236", "\94\155\42\136\26\170"),[v7("\173\60\41\187", "\213\228\95\70")]=v7("\41\179\199\135\124", "\23\74\219\162\228")});
			break;
		end
	end
end});
local v95 = v83:Section({[v7("\13\239\82\163\62", "\91\89\134\38\207")]=v7("\103\252\205\50\26\196\52", "\71\36\142\168\86\115\176"),[v7("\246\162\125\177", "\41\191\193\18\223\99\222\54")]=v7("\162\40\193\37", "\202\203\70\167\74")});
local v96 = v95:Tab({[v7("\24\8\200\63\116", "\17\76\97\188\83")]=v7("\164\37\214\34\36", "\195\229\71\185\87\80\227\43"),[v7("\201\255\15\94", "\143\128\156\96\48")]=v7("\173\194\245\0\4", "\119\216\177\144\114")});
v96:Paragraph({[v7("\253\32\237\78\204", "\34\169\73\153")]=v7("\132\233\19\132\184\237\51\203\139\254\24\142\164\237\7", "\235\202\140\107"),[v7("\40\113\39\171", "\165\108\20\84\200\137\71\151")]=("Version: 3.0.0\nCreated by: Darien & Roger\nUI Library: WindUI by Footagesus (.ftgs)\nPlatform: " .. ((v20 and v7("\87\187\41\129\118\177", "\232\26\212\75")) or v7("\7\106", "\151\87\41\18\136")))});
v96:Space();
v96:Section({[v7("\111\166\222\220\251", "\158\59\207\170\176")]=v7("\105\91\50\93\153\93\91\32", "\236\47\62\83\41"),[v7("\206\172\56\47\153\139\224\172", "\226\154\201\64\91\202")]=18,[v7("\231\70\19\12\125\185\200\78\21\12", "\220\161\41\125\120\42")]=Enum.FontWeight.SemiBold});
v96:Paragraph({[v7("\136\120\180\2\185", "\110\220\17\192")]="",[v7("\80\124\39\25", "\199\20\25\84\122\139\87\145")]=("• Aimbot with Smoothness & FOV\n• Silent Aim with Hit Chance\n• Box ESP\n• Name ESP\n• Health ESP\n• Distance ESP\n• Tracer ESP\n• Skeleton ESP\n• Chams\n• Team Check\n• Wall Check\n• Dead Check\n• Config System\n• " .. ((v20 and v7("\106\6\223\167\23\239\7\61\210\187\24\226\7\58\200\190\11\229\85\29", "\138\39\105\189\206\123")) or v7("\47\36\201\0\252\236\220\250\95\52\156\61\227\246\221\235", "\159\127\103\233\77\147\153\175")))});
function updateESPState()
	local FlatIdent_83DF4 = 0;
	local v204;
	local v205;
	while true do
		if (FlatIdent_83DF4 == 1) then
			while true do
				if ((0 - 0) == v204) then
					v205 = v32 or v34 or v35 or v36 or v37 or v38;
					if v205 then
						local FlatIdent_4FF01 = 0;
						local v347;
						while true do
							if (FlatIdent_4FF01 == 0) then
								v347 = 1709 - (541 + 1168);
								while true do
									if (v347 == (1597 - (645 + 952))) then
										for v488, v489 in ipairs(v11:GetPlayers()) do
											if (v489 ~= v17) then
												v77(v489);
											end
										end
										if not v54 then
											v54 = v12.RenderStepped:Connect(v79);
										end
										break;
									end
								end
								break;
							end
						end
					else
						local v348 = 0;
						while true do
							if (v348 == (838 - (669 + 169))) then
								if v54 then
									v54:Disconnect();
									v54 = nil;
								end
								for v490, v491 in pairs(v47) do
									v78(v490);
								end
								break;
							end
						end
					end
					break;
				end
			end
			break;
		end
		if (FlatIdent_83DF4 == 0) then
			v204 = 0 - 0;
			v205 = nil;
			FlatIdent_83DF4 = 1;
		end
	end
end
v11.PlayerAdded:Connect(function(v206)
	local v207 = 0 - 0;
	local v208;
	while true do
		if (v207 == (0 - 0)) then
			v208 = 0 + 0;
			while true do
				if (v208 == 1) then
					if v33 then
						local FlatIdent_12F27 = 0;
						local v437;
						while true do
							if (FlatIdent_12F27 == 0) then
								v437 = 0;
								while true do
									if (v437 == 0) then
										v206.CharacterAdded:Connect(function()
											local FlatIdent_936E7 = 0;
											while true do
												if (FlatIdent_936E7 == 0) then
													task.wait(0.5 + 0);
													v80(v206);
													break;
												end
											end
										end);
										if v206.Character then
											v80(v206);
										end
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
				if (v208 == 0) then
					if (v206 == v17) then
						return;
					end
					if (v32 or v34 or v35 or v36 or v37 or v38) then
						v77(v206);
					end
					v208 = 766 - (181 + 584);
				end
			end
			break;
		end
	end
end);
v11.PlayerRemoving:Connect(function(v209)
	local FlatIdent_807DC = 0;
	local v210;
	local v211;
	while true do
		if (1 == FlatIdent_807DC) then
			while true do
				if (v210 == (0 - 0)) then
					v211 = 0 - 0;
					while true do
						if (v211 == 0) then
							v78(v209);
							v81(v209);
							break;
						end
					end
					break;
				end
			end
			break;
		end
		if (FlatIdent_807DC == 0) then
			v210 = 1395 - (665 + 730);
			v211 = nil;
			FlatIdent_807DC = 1;
		end
	end
end);
if v20 then
	v76();
end
v8:Notify({[v7("\51\249\240\166\69", "\171\103\144\132\202\32")]=v7("\62\42\241\3\2\46\209\76\60\32\232\8\21\43", "\108\112\79\137"),[v7("\27\199\103\43", "\85\95\162\20\72\205\97\137")]=(v7("\225\173\100\141\67\168\141\197\248\43\216\20\185\133\211\248\39\211\68\184\221\251\252\62\218\2\234\192\173", "\173\151\157\74\188\109\152") .. ((v20 and v7("\9\7\58\212\208\81", "\147\68\104\88\189\188\52\181")) or v7("\42\171", "\176\122\232\235"))),[v7("\169\118\53\65", "\142\224\21\90\47")]=v7("\119\220\34\85\175", "\229\20\180\71\54\196\235"),[v7("\13\107\211\226\225\163\143\39", "\224\73\30\161\131\149\202")]=(1355 - (540 + 810))});
print(v7("\223\224\233\95\227\228\201\16\208\247\226\85\255\228\253\16\221\234\240\84\244\225\185\116\212\200\222\25", "\48\145\133\145"));
print(v7("\106\64\180\250\215\35\72\65\239", "\76\58\44\213\142\177"), (v20 and v7("\230\43\16\36\116\206", "\24\171\68\114\77")) or v7("\223\62", "\205\143\125\48\50\231\190\100"));