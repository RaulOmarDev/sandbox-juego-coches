
--local bloqueDepurueba = workspace.OtroBloque
--bloqueDepurueba.Color = Color3.fromRGB(255, 0, 0) -- Cambia el color del bloque a rojo

--bloqueDepurueba.Touched:Connect(function()
--    print("El bloque ha sido tocado.")
--end)

-- Necesitamos este servicio para encontrar al jugador correcto
local Players = game:GetService("Players")

local bloqueDepurueba = workspace.OtroBloque
bloqueDepurueba.Color = Color3.fromRGB(255, 0, 0) 

local puedeTocar = true


bloqueDepurueba.Touched:Connect(function(hit)

    if not puedeTocar then return end

    local personaje = hit.Parent
    local humanoid = personaje:FindFirstChild("Humanoid")
    
    if humanoid then
        local jugador = Players:GetPlayerFromCharacter(personaje)

        bloqueDepurueba.Touched:Connect(function()
            bloqueDepurueba.Color = Color3.fromRGB(0, 255, 4) 
        end)
        
        if jugador then
            puedeTocar = false 
            
            local playerGui = jugador:FindFirstChild("PlayerGui")

            if playerGui then
                local miGui = playerGui:FindFirstChild("MensajeGui")
                
                if miGui and miGui:FindFirstChild("TextLabel") then
  
                     miGui.TextLabel.Visible = true
                    
                    task.wait(5)
                    
                    miGui.TextLabel.Visible = false
                end
            end
            
             bloqueDepurueba.Color = Color3.fromRGB(255, 0, 0) 

            puedeTocar = true
        end
    end
end)