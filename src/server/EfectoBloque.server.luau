local bloquePrueva = workspace.BloquePrueba

bloquePrueva.Touched:Connect(function()
	bloquePrueva.Color = Color3.fromRGB(255, 0, 0)
end)
