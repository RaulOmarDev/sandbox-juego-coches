local bloquePrueva = workspace.BloquePrueba

bloquePrueva.Touched:Connect(function()
	bloquePrueva.Color = Color3.fromRGB(94, 99, 170)
end)
