package com.ca.mdo;

class Constants {
  public static final String ACTIVITY_ONPAUSE = "onPause";
  
  public static final String ACTIVITY_ONRESUME = "onResume";
  
  public static final String ACTIVITY_PAGE_FINISH = "page_end";
  
  public static final String ACTIVITY_PAGE_LOAD = "page_start";
  
  public static final String ALGO_RSA = "RSA";
  
  public static final String APM_HEADER_KEY = "x-apm-bt";
  
  protected static final String APPID = "appId";
  
  protected static final String APPKEY = "appKey";
  
  public static final String APP_VERSION_QUERY_PARAM = "app_version_id=";
  
  protected static final String BASEURL = "baseURL";
  
  public static final String CAMAA_APM_ATTR_COR_BROWS_GUID = "CorBrowsGUID";
  
  public static final String CAMAA_APM_COOKIE_PREFIX = "x-apm-brtm-response-bt";
  
  public static final String CAMAA_APM_HTTP_CORRELATION_ID = "corrId";
  
  public static final String CAMAA_CUSTOMER_ID = "customerId";
  
  public static final String CAMAA_DOUBLE = "double";
  
  public static final int CAMAA_HTTP_STATUS_NOT_COLLECTED = 777;
  
  public static final int CAMAA_SCREENSHOT_QUALITY_DEFAULT = -1;
  
  public static final int CAMAA_SCREENSHOT_QUALITY_HIGH = 30;
  
  public static final int CAMAA_SCREENSHOT_QUALITY_LOW = 15;
  
  public static final int CAMAA_SCREENSHOT_QUALITY_MEDIUM = 20;
  
  public static final String CAMAA_SSL_PINNINGMODE_CERTIFICATE = "certificate";
  
  public static final String CAMAA_SSL_PINNINGMODE_FINGERPRINT_SHA1SIGNATURE = "sha1signature";
  
  public static final String CAMAA_SSL_PINNINGMODE_NONE = "none";
  
  public static final String CAMAA_SSL_PINNINGMODE_PUBLICKEY = "pk";
  
  public static final String CAMAA_SSL_PINNINGMODE_PUBLICKEYHASH = "hash";
  
  public static final String CAMAA_STRING = "string";
  
  public static final long CAMAA_UPLOAD_ATTEMPT_INTERVAL = 60000L;
  
  protected static final String COLLECTORURL = "collectorUploadURL";
  
  protected static final String COLLECTOR_URL = "/write_bulk";
  
  protected static final String CONF_FILE = "camdo.plist";
  
  protected static final String CONF_FOLDER = "conf";
  
  public static final int CRASH = 3;
  
  protected static final String CRYPTO_RES_ALGO = "algorithm";
  
  protected static final String CRYPTO_RES_ENC_KEY = "encryptionKey";
  
  protected static final String CRYPTO_RES_ENC_KEY_SIZE = "keySize";
  
  protected static final String CRYPTO_RES_ENC_KEY_VER = "encryptionKeyVersion";
  
  protected static String CRYPTO_URL;
  
  public static final String CURRENT_VALUES = "cv";
  
  public static final int CUSTOMER_FEEDBACK = 224;
  
  public static final int CUSTOMER_HEADER = 222;
  
  public static final int CUSTOM_EVENT = 6;
  
  public static final int CUSTOM_EVENT2 = 10;
  
  public static final String DB_HEADER_JSON = "header_json";
  
  public static final String DB_JSON_TYPE = "session_json_type";
  
  public static final String DB_ROW_ID = "row_id";
  
  public static final String DB_SESSION_ID = "session_id";
  
  public static final String DB_SESSION_JSON = "session_json";
  
  public static final String DB_SESSION_STATE = "session_state";
  
  public static final String DB_SESSION_STATUS = "session_status";
  
  public static final int DEVICE_LOCATION = 223;
  
  public static final String ENCRYPTED_VALUE_ATTRIB = "v";
  
  protected static String ENCRYPTION_ALGORITHM;
  
  public static final String ENCRYPTION_KEY_ATTRIB = "k";
  
  protected static String ENCRYPTION_KEY_SIZE;
  
  protected static final String EVENT_LOG_APP_ENTERED_BACKGROUND = "App Entered Background";
  
  protected static final String EVENT_LOG_APP_ICON = "app_icon";
  
  protected static final String EVENT_LOG_APP_START = "app_start";
  
  public static final String EVENT_LOG_APP_TXN_END = "apptxn_end";
  
  public static final String EVENT_LOG_APP_TXN_FAIL = "apptxn_fail";
  
  public static final String EVENT_LOG_APP_TXN_START = "apptxn_start";
  
  protected static final String EVENT_LOG_ATTRIBUTES = "attr";
  
  protected static final String EVENT_LOG_ATTRIBUTES_AS = "ca_as";
  
  protected static final String EVENT_LOG_ATTRIBUTES_AS_PARENT = "ca_as_p";
  
  protected static final String EVENT_LOG_ATTRIBUTES_AT = "ca_at";
  
  protected static final String EVENT_LOG_ATTRIBUTES_AT_PARENT = "ca_at_p";
  
  protected static final String EVENT_LOG_ATTRIBUTES_CSN = "csn";
  
  protected static final String EVENT_LOG_ATTRIBUTES_MODE = "mode";
  
  protected static final String EVENT_LOG_ATTRIBUTES_PSN = "psn";
  
  protected static final String EVENT_LOG_ATTRIBUTES_SCREENSHOT_HEIGHT = "h";
  
  protected static final String EVENT_LOG_ATTRIBUTES_SCREENSHOT_TITLE = "tt";
  
  protected static final String EVENT_LOG_ATTRIBUTES_SCREENSHOT_WIDTH = "w";
  
  protected static final String EVENT_LOG_ATTRIBUTES_ST = "txn_s";
  
  protected static final String EVENT_LOG_ATTRIBUTES_ST_PARENT = "txn_s_p";
  
  protected static final String EVENT_LOG_ATTRIBUTE_ACTIVITY = "activity";
  
  protected static final String EVENT_LOG_ATTRIBUTE_METHOD = "m";
  
  protected static final String EVENT_LOG_CRASH = "crash";
  
  protected static final String EVENT_LOG_CUSTOM = "custom";
  
  protected static final String EVENT_LOG_CUSTOM_EVENT = "custom_event";
  
  protected static final String EVENT_LOG_EVENT_ID = "eid";
  
  protected static final String EVENT_LOG_FAILED = "fd";
  
  protected static final String EVENT_LOG_JAILBROKEN = "jailbroken";
  
  protected static final String EVENT_LOG_NAME = "n";
  
  protected static final String EVENT_LOG_NAME_NETWORK_STATUS = "NetworkStatus";
  
  protected static final String EVENT_LOG_NETWORK_DATA_IN = "i";
  
  protected static final String EVENT_LOG_NETWORK_DATA_OUT = "o";
  
  protected static final String EVENT_LOG_NETWORK_RESPONSE_TIME = "r";
  
  protected static final String EVENT_LOG_NETWORK_STATUS = "s";
  
  protected static final String EVENT_LOG_NETWORK_URL = "u";
  
  protected static final String EVENT_LOG_ORIENTATION = "or";
  
  protected static final String EVENT_LOG_PRIVATE_ZONE_ENTERED = "private_zone_entered";
  
  protected static final String EVENT_LOG_PRIVATE_ZONE_EXITED = "private_zone_exited";
  
  protected static final String EVENT_LOG_PROGRESS_BAR = "ProgressBar";
  
  protected static final String EVENT_LOG_PROGRESS_BAR_END = "ai_end";
  
  protected static final String EVENT_LOG_PROGRESS_BAR_ID = "ai_id";
  
  protected static final String EVENT_LOG_PROGRESS_BAR_START = "ai_start";
  
  protected static final String EVENT_LOG_PROGRESS_BAR_TIME_DIFFERENCE = "ai_st";
  
  protected static final String EVENT_LOG_SCREENSHOT = "ss";
  
  protected static final String EVENT_LOG_SCREENSHOT_DISABLED = "screenshots_disabled";
  
  protected static final String EVENT_LOG_SCREENSHOT_ENABLED = "screenshots_enabled";
  
  protected static final String EVENT_LOG_SCREENSHOT_EVENT = "ScreenShot";
  
  protected static final String EVENT_LOG_SDK_DISABLED = "sdk_disabled";
  
  protected static final String EVENT_LOG_SESSION_END = "session_end";
  
  protected static final String EVENT_LOG_SESSION_PURGED = "session_purged";
  
  protected static final String EVENT_LOG_SESSION_START = "session_start";
  
  protected static final String EVENT_LOG_TIMESTAMP = "t";
  
  protected static final String EVENT_LOG_TOUCH_ENDED = "touch_ended";
  
  protected static final String EVENT_LOG_TYPE_ACTIVITY = "activity";
  
  protected static final String EVENT_LOG_TYPE_APP_EVENTS = "app_events";
  
  protected static final String EVENT_LOG_TYPE_CRASH = "crash";
  
  protected static final String EVENT_LOG_TYPE_CUSTOM = "custom";
  
  protected static final String EVENT_LOG_TYPE_NETWORK = "network";
  
  protected static final String EVENT_LOG_TYPE_NETWORK_STATUS = "NetworkStatus";
  
  protected static final String EVENT_LOG_TYPE_STR = "ty";
  
  protected static final String EVENT_LOG_TYPE_TOUCH = "view_touch_events";
  
  protected static final String EVENT_LOG_TYPE_TXN_EVENTS = "txn_events";
  
  protected static final String EVENT_LOG_TYPE_USAGE = "usage";
  
  protected static final String EVENT_LOG_TYPE_VIEW_EVENTS = "view_events";
  
  protected static final String EVENT_LOG_VALUE = "v";
  
  protected static final String EVENT_VALUE_METHOD_API = "api";
  
  protected static final String EVENT_VALUE_METHOD_POLICY = "policy";
  
  public static final String FRAGMENT_ONPAUSE = "onFragmentPause";
  
  public static final String FRAGMENT_ONRESUME = "onFragmentResume";
  
  public static final int GENERAL_EVENTS = 79;
  
  public static final String HEADER_APPLICATION_ID = "ai";
  
  public static final String HEADER_APPLICATION_KEY = "ak";
  
  public static final String HEADER_APPLICATION_KEY_CV = "cak";
  
  public static final String HEADER_APPLICATION_NAME = "an";
  
  public static final String HEADER_APPLICATION_VERSION = "av";
  
  public static final String HEADER_COUNTRY_CODE = "cc";
  
  public static final String HEADER_CRASH_OCCURED = "crashOccurred";
  
  public static final String HEADER_CUSTOMER_ID = "customerId";
  
  public static final String HEADER_CUSTOM_ATTR = "attr";
  
  public static final String HEADER_CUSTOM_ATTR_DTYPE = "dty";
  
  public static final String HEADER_CUSTOM_ATTR_NAME = "n";
  
  public static final String HEADER_CUSTOM_ATTR_VALUE = "v";
  
  public static final String HEADER_C_ID = "cid";
  
  public static final String HEADER_DATA_TYPE = "dty";
  
  public static final String HEADER_DEVICE_DETAILS = "dv";
  
  public static final String HEADER_DEVICE_ID = "di";
  
  public static final String HEADER_DEVICE_ID_TYPE = "dt";
  
  public static final String HEADER_DEVICE_IPADDRESS = "ip";
  
  public static final String HEADER_DEVICE_LANGUAGE = "ln";
  
  public static final String HEADER_DEVICE_MODEL = "dm";
  
  public static final String HEADER_DEVICE_PLATFORM = "pf";
  
  public static final String HEADER_DEVICE_VENDOR = "vn";
  
  public static final String HEADER_DEVICE_VERSION = "pv";
  
  public static final String HEADER_IS_CRASH = "cic";
  
  public static final String HEADER_KEY_VERSION = "ckv";
  
  public static final String HEADER_LATITUDE = "la";
  
  public static final String HEADER_LONGITUDE = "lo";
  
  public static final String HEADER_NETWORK_CARRIER_NAME = "ca";
  
  public static final String HEADER_PROFILE_ID = "cpi";
  
  public static final String HEADER_PROFILE_TIMESTAMP = "cpt";
  
  public static final String HEADER_SCREEN_HEIGHT = "sc_h";
  
  public static final String HEADER_SCREEN_LOAD_TIME = "slt";
  
  public static final long HEADER_SCREEN_LOAD_TIME_DEFAULT = 20L;
  
  public static final String HEADER_SCREEN_WIDTH = "sc_w";
  
  public static final String HEADER_SDK_VERSION = "csv";
  
  public static final String HEADER_SECURE_MODE = "csm";
  
  public static final String HEADER_SESSION_END_TIME = "se";
  
  public static final String HEADER_SESSION_ID = "si";
  
  public static final String HEADER_SESSION_START_TIME = "ss";
  
  public static final String HEADER_TENANT_APP_ID = "cta";
  
  public static final String HEADER_TENANT_ID = "ti";
  
  public static final String HEADER_ZIPCODE = "zp";
  
  public static final String HTTP_HEADER_TENANT_ID = "X-Axa-Tenant";
  
  public static final int HTTP_PERFORMANCE = 4;
  
  public static final int INITIALIZE = 0;
  
  public static final String JSON_EVENT_CRASH_LOGS_TAG = "evt_c";
  
  public static final String JSON_EVENT_LOGS_NETWORK_HEADER_ATTRIB_TAG = "ha";
  
  public static final String JSON_EVENT_LOGS_NETWORK_REQ_PARAM_TAG = "rp";
  
  public static final String JSON_EVENT_LOGS_TAG = "evt";
  
  public static final String JSON_HEADER_TAG = "hdr";
  
  public static final String JSON_PERF_TAG = "prf";
  
  public static final String LAST_LOGGED_EVENT = "lastloggedevent";
  
  public static final String LAST_SESSION_ACCEPTED_TIME;
  
  protected static final String LOW_MEMORY_WARNING_EVENT = "MemoryWarning";
  
  protected static final String LOW_MEMORY_WARNING_VALUE = "Low Memory";
  
  public static final String NETWORK_CONNECTION = "CONNECTION";
  
  public static final String NETWORK_TYPE_1xRTT = "1xRTT";
  
  public static final String NETWORK_TYPE_BLUETOOTH = "BLUETOOTH";
  
  public static final String NETWORK_TYPE_CDMA = "CDMA";
  
  public static final String NETWORK_TYPE_EDGE = "EDGE";
  
  public static final String NETWORK_TYPE_EHRPD = "EHRPD";
  
  public static final String NETWORK_TYPE_ETHERNET = "ETHERNET";
  
  public static final String NETWORK_TYPE_EVDO_0 = "EVDO_0";
  
  public static final String NETWORK_TYPE_EVDO_A = "EVDO_A";
  
  public static final String NETWORK_TYPE_EVDO_B = "EVDO_B";
  
  public static final String NETWORK_TYPE_GPRS = "GPRS";
  
  public static final String NETWORK_TYPE_HSDPA = "HSDPA";
  
  public static final String NETWORK_TYPE_HSPA = "HSPA";
  
  public static final String NETWORK_TYPE_HSPAP = "HSPAP";
  
  public static final String NETWORK_TYPE_HSUPA = "HSUPA";
  
  public static final String NETWORK_TYPE_IDEN = "IDEN";
  
  public static final String NETWORK_TYPE_LTE = "LTE";
  
  public static final String NETWORK_TYPE_MOBILE = "MOBILE";
  
  public static final String NETWORK_TYPE_NOT_CONNECTED = "No Connectivity";
  
  public static final String NETWORK_TYPE_UMTS = "UMTS";
  
  public static final String NETWORK_TYPE_WIFI = "WIFI";
  
  public static final String NETWORK_TYPE_WIMAX = "WIMAX";
  
  public static final int ON_PAUSE = 101;
  
  public static final int OPEN_SESSION = 23;
  
  public static final int OTHER = 99;
  
  protected static final String PACKAGE_NAME = Constants.class.getPackage().getName();
  
  public static final int PAGE = 5;
  
  public static final String PASS_OVER_CSN = "passovercsn";
  
  public static final String PASS_OVER_PSN = "passoverpsn";
  
  protected static final String PERF_BATT_PCT = "b";
  
  protected static final String PERF_CPU_UTIL = "c";
  
  protected static final String PERF_DISK = "d";
  
  protected static final String PERF_FRAMES_PER_SEC = "f";
  
  protected static final String PERF_MEM_BYTES = "m";
  
  public static final String PREF_APPICON;
  
  public static final String PREF_APPID;
  
  public static final String PREF_APPKEY;
  
  public static final String PREF_BASEURL;
  
  public static final String PREF_COLLECTORURL;
  
  public static final String PREF_CPI;
  
  public static final String PREF_CPT;
  
  public static final String PREF_CRASH_SESSION;
  
  public static final String PREF_CSN;
  
  public static final String PREF_DEVICE_TOTAL_DISK;
  
  public static final String PREF_ENCRYPTION_KEY;
  
  public static final String PREF_ENCRYPTION_KEY_ALGO;
  
  public static final String PREF_ENCRYPTION_KEY_SIZE;
  
  public static final String PREF_ENCRYPTION_KEY_VER;
  
  public static final String PREF_EVENT_COUNTER_FOR_UPLOAD;
  
  public static final String PREF_IS_CRASH;
  
  public static final String PREF_IS_DB_FULL;
  
  public static final String PREF_IS_SDK_ENABLED_BY_API;
  
  public static final String PREF_NAME;
  
  public static final String PREF_NEW_ENCRYPTION_KEY;
  
  public static final String PREF_NEW_ENCRYPTION_KEY_ALGO;
  
  public static final String PREF_NEW_ENCRYPTION_KEY_SIZE;
  
  public static final String PREF_NEW_ENCRYPTION_KEY_VER;
  
  public static final String PREF_SDK_ENABLED;
  
  public static final String PREF_TENANTID;
  
  public static final String PROCESS_ID = "pid";
  
  protected static final String PROFILEURL = "profileURL";
  
  public static final String REQUEST_BODY = "b";
  
  public static String REQUEST_HEADER_LAST_SESSION_ACCPETED_TIMESTAMP;
  
  public static final int RESPONSE_CODE_SESSION_REJECTED = 429;
  
  public static String RESPONSE_HEADER_SESSION_STATUS;
  
  public static final int SCREENSHOT = 89;
  
  public static final String SCREENSHOT_EVENT = "screenshot";
  
  public static final String SDK_BUILD_TIMESTAMP = "v16.4.2 May 16 2017 10:23";
  
  public static final String SDK_GOT_ENABLED = "SDK_GOT_ENABLED";
  
  public static final String SDK_VERSION = "16.4.2";
  
  public static final int SESSION_END = 2;
  
  public static final int SESSION_START = 1;
  
  public static final int SESSION_STATE_CRASHED = 2;
  
  public static final int SESSION_STATE_ENDED = 1;
  
  public static final int SESSION_STATE_LIVE = 0;
  
  public static String SESSION_STATUS_ACCEPTED;
  
  public static String SESSION_STATUS_REJECTED;
  
  public static final int START_SESSION = 254;
  
  public static final int STOP_AND_START = 252;
  
  public static final int STOP_SESSION = 253;
  
  public static final int SUPPORT_ANDROID_VERSION = 16;
  
  protected static final String TENANTID = "tenantID";
  
  protected static final String TIMESTAMP = "t";
  
  public static final int TOUCH_EVENT = 9;
  
  public static final int TRACK_LOCATION = 230;
  
  public static final int TRANSACTION_START = 7;
  
  public static final int TRANSACTION_STOP = 8;
  
  public static final int UPLOAD = 251;
  
  public static final int UPLOAD_EVENT = 225;
  
  public static final boolean isPerformance = true;
  
  public static final boolean isVerbose = true;
  
  static {
    LAST_SESSION_ACCEPTED_TIME = PACKAGE_NAME + ".LAST_SESSION_ACCEPTED_TIME";
    PREF_IS_DB_FULL = PACKAGE_NAME + ".isDBFull";
    PREF_EVENT_COUNTER_FOR_UPLOAD = PACKAGE_NAME + ".evtUploadCounter";
    PREF_DEVICE_TOTAL_DISK = PACKAGE_NAME + ".deviceTotalDisk";
    PREF_SDK_ENABLED = PACKAGE_NAME + ".SDK_ENABLED";
    PREF_CPI = PACKAGE_NAME + "policy#lastId";
    PREF_CPT = PACKAGE_NAME + "policy#lastupdated";
    PREF_APPICON = PACKAGE_NAME + "appicon#sent";
    PREF_CSN = PACKAGE_NAME + "currentscreen";
    PREF_IS_SDK_ENABLED_BY_API = PACKAGE_NAME + ".PREF_IS_SDK_ENABLED_BY_API";
    PREF_NAME = PACKAGE_NAME + ".CAMobileDevOpsPrefs";
    PREF_IS_CRASH = PACKAGE_NAME + ".IsAnySessionCrashed";
    PREF_CRASH_SESSION = PACKAGE_NAME + ".crashedSessionId";
    PREF_TENANTID = PACKAGE_NAME + ".plistTenantId";
    PREF_APPID = PACKAGE_NAME + ".plistAppId";
    PREF_BASEURL = PACKAGE_NAME + ".plistBaseUrl";
    PREF_APPKEY = PACKAGE_NAME + ".plistAppKey";
    PREF_COLLECTORURL = PACKAGE_NAME + ".plistCollectorUrl";
    PREF_ENCRYPTION_KEY = PACKAGE_NAME + "." + "encryptionKey";
    PREF_NEW_ENCRYPTION_KEY = PACKAGE_NAME + ".new." + "encryptionKey";
    PREF_ENCRYPTION_KEY_VER = PACKAGE_NAME + "." + "encryptionKeyVersion";
    PREF_NEW_ENCRYPTION_KEY_VER = PACKAGE_NAME + ".new." + "encryptionKeyVersion";
    RESPONSE_HEADER_SESSION_STATUS = "X-Session-Status";
    REQUEST_HEADER_LAST_SESSION_ACCPETED_TIMESTAMP = "X-Last-Accepted-Session";
    SESSION_STATUS_REJECTED = "Rejected";
    SESSION_STATUS_ACCEPTED = "Accepted";
    ENCRYPTION_KEY_SIZE = "keySize";
    PREF_ENCRYPTION_KEY_SIZE = PACKAGE_NAME + "." + ENCRYPTION_KEY_SIZE;
    PREF_NEW_ENCRYPTION_KEY_SIZE = PACKAGE_NAME + ".new." + ENCRYPTION_KEY_SIZE;
    CRYPTO_URL = "cryptoURL";
    ENCRYPTION_ALGORITHM = "algorithm";
    PREF_ENCRYPTION_KEY_ALGO = PACKAGE_NAME + "." + ENCRYPTION_ALGORITHM;
    PREF_NEW_ENCRYPTION_KEY_ALGO = PACKAGE_NAME + ".new." + ENCRYPTION_ALGORITHM;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\Constants.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */