Before do |scenario|
  begin
    # data_loc = scenario.feature.file.split('scenarios').last.gsub('.feature', '.yml')
    # $scenario_path = DataMagic.load(('customer_details' + data_loc))
    @start_time = Time.now
  rescue => exception
    $logger.error exception.message
    $logger.error exception.backtrace
    raise exception
  end
end

After do |scenario|
  begin
    duration = Time.now - @start_time
    duration = Time.at(duration).utc.strftime('%H:%M:%S')
  rescue => exception
    $logger.error exception.message
    $logger.error exception.backtrace
    raise exception
  end
end

at_exit do
  ReportBuilder.configure do |config|
    config.json_path = 'reports'
    config.report_path = 'reports'
    config.report_types = [:html]
    config.report_title = 'Automation Results'
    config.include_images = false
  end
  ReportBuilder.build_report
  File.rename './reports.html', './reports/reports.html'
end