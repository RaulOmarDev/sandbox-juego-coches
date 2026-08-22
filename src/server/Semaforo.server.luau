local bloquesem = workspace.BloqueSemaforo

while true do
    bloquesem.Color = Color3.fromRGB(14, 236, 10)
    task.wait(2)
    bloquesem.Color = Color3.fromRGB(221, 236, 10)
    task.wait(2)
    bloquesem.Color = Color3.fromRGB(236, 10, 10)
    task.wait(2)
end