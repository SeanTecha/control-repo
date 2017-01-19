class profile::windows::features {

  Windowsfeature { 'IIS_NET45':
    feature_name => [ 'Web-WebServer',
      'Web-Http-Errors',
      'Web-Http-Logging',
      'Web-Asp-Net45',
      'NET-Framework-45-ASPNET',
    ],
    installmanagementtools => true,
  }
}
