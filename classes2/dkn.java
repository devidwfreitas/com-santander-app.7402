public final class dkn {
  public static dko<Long> A;
  
  public static dko<Long> B;
  
  public static dko<Long> C;
  
  public static dko<Long> D;
  
  public static dko<Long> E;
  
  public static dko<Long> F;
  
  public static dko<Long> G;
  
  public static dko<Long> H;
  
  public static dko<Integer> I;
  
  public static dko<Long> J;
  
  public static dko<Integer> K;
  
  public static dko<Integer> L;
  
  public static dko<Long> M;
  
  public static dko<Boolean> a = dko.a("measurement.service_enabled", true);
  
  public static dko<Boolean> b = dko.a("measurement.service_client_enabled", true);
  
  public static dko<Boolean> c = dko.a("measurement.log_third_party_store_events_enabled", false);
  
  public static dko<Boolean> d = dko.a("measurement.log_installs_enabled", false);
  
  public static dko<Boolean> e = dko.a("measurement.log_upgrades_enabled", false);
  
  public static dko<Boolean> f = dko.a("measurement.log_androidId_enabled", false);
  
  public static dko<String> g = dko.a("measurement.log_tag", "FA", "FA-SVC");
  
  public static dko<Long> h = dko.a("measurement.ad_id_cache_time", 10000L);
  
  public static dko<Long> i = dko.a("measurement.monitoring.sample_period_millis", 86400000L);
  
  public static dko<Long> j = dko.a("measurement.config.cache_time", 86400000L, 3600000L);
  
  public static dko<String> k = dko.a("measurement.config.url_scheme", "https");
  
  public static dko<String> l = dko.a("measurement.config.url_authority", "app-measurement.com");
  
  public static dko<Integer> m = dko.a("measurement.upload.max_bundles", 100);
  
  public static dko<Integer> n = dko.a("measurement.upload.max_batch_size", 65536);
  
  public static dko<Integer> o = dko.a("measurement.upload.max_bundle_size", 65536);
  
  public static dko<Integer> p = dko.a("measurement.upload.max_events_per_bundle", 1000);
  
  public static dko<Integer> q = dko.a("measurement.upload.max_events_per_day", 100000);
  
  public static dko<Integer> r = dko.a("measurement.upload.max_error_events_per_day", 1000);
  
  public static dko<Integer> s = dko.a("measurement.upload.max_public_events_per_day", 50000);
  
  public static dko<Integer> t = dko.a("measurement.upload.max_conversions_per_day", 500);
  
  public static dko<Integer> u = dko.a("measurement.upload.max_realtime_events_per_day", 10);
  
  public static dko<Integer> v = dko.a("measurement.store.max_stored_events_per_app", 100000);
  
  public static dko<String> w = dko.a("measurement.upload.url", "https://app-measurement.com/a");
  
  public static dko<Long> x = dko.a("measurement.upload.backoff_period", 43200000L);
  
  public static dko<Long> y = dko.a("measurement.upload.window_interval", 3600000L);
  
  public static dko<Long> z = dko.a("measurement.upload.interval", 3600000L);
  
  static {
    A = dko.a("measurement.upload.realtime_upload_interval", 10000L);
    B = dko.a("measurement.upload.debug_upload_interval", 1000L);
    C = dko.a("measurement.upload.minimum_delay", 500L);
    D = dko.a("measurement.alarm_manager.minimum_interval", 60000L);
    E = dko.a("measurement.upload.stale_data_deletion_interval", 86400000L);
    F = dko.a("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
    G = dko.a("measurement.upload.initial_upload_delay_time", 15000L);
    H = dko.a("measurement.upload.retry_time", 1800000L);
    I = dko.a("measurement.upload.retry_count", 6);
    J = dko.a("measurement.upload.max_queue_time", 2419200000L);
    K = dko.a("measurement.lifetimevalue.max_currency_tracked", 4);
    L = dko.a("measurement.audience.filter_result_max_count", 200);
    M = dko.a("measurement.service_client.idle_disconnect_millis", 5000L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */