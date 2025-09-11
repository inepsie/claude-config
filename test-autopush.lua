-- Test auto-push functionality
-- Ce fichier sert uniquement à tester le workflow automatique de commit/push
-- Créé le 2025-09-12 pour vérifier que les modifications de config sont bien poussées

print("Test auto-push - Configuration nvim")

return {
  test_message = "Auto-push test réussi",
  timestamp = os.date("%Y-%m-%d %H:%M:%S")
}