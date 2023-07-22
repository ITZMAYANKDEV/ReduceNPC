print("^2Reduce^7-^2NPC v^42^7.^45 ^7- ^2Traffic Script by ^1Mayank^7")

local config {
    pedFrequency = 1.0,
    trafficFrequency = 1.0
    --[0.0] Means NO NPC
}

Citizen.CreateThread(function()
    while true do 
      Citizen.wait(0)
      SetPedDensityMultiplierThisFrame(config.pedFrequency)
      SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)

      SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
      SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
      SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end
end)