Before do |scenario|
  @homepage = HomePage.new
  @detalheproduto = DetalheProduto.new
  @garantiaestendida = GarantiaEstendida.new
  @carrinho = Carrinho.new
end

After do |scenario|
  # depois do cenário
end

AfterStep do
  # depois do step
end

at_exit do
  # Configuração do ReportBuilder
  ReportBuilder.configure do |config|
    config.json_path = "reports/report.json"
    config.report_path = "reports/Automação_report"
    config.report_types = [:html, :retry]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = "Teste QA - ZUP - do Dennis Fazio"
    config.compress_images = false
    # config.additional_info = { 'Project name' => 'Viajanet', 'Platform' => 'Viajanet', 'Report generated' => DateTime.now }
    config.additional_info = { "Projeto:" => "Automação Dennis Fazio", "Ambiente" => "Local", "Report generated" => DateTime.now }
    config.color = "blue"
  end
  ReportBuilder.build_report
end
