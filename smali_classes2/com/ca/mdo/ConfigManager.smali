.class Lcom/ca/mdo/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mHashmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ca/mdo/ConfigManager;->config:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private getByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1f9c

    new-array v1, v3, [B

    .line 67
    .local v1, "data":[B
    :goto_0
    array-length v3, v1

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 68
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static getConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/ca/mdo/ConfigManager;->config:Ljava/util/Map;

    return-object v0
.end method

.method public static readConfigurationFromPlistFile(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 159
    new-instance v0, Lcom/ca/mdo/ConfigManager;

    invoke-direct {v0}, Lcom/ca/mdo/ConfigManager;-><init>()V

    .line 160
    .local v0, "cfgMgr":Lcom/ca/mdo/ConfigManager;
    invoke-virtual {v0, p0}, Lcom/ca/mdo/ConfigManager;->parsePlistXML(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/ca/mdo/ConfigManager;->validateConfig()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const-string v1, "Failed to validate configuration, disabling SDK."

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 163
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    sput-object v1, Lcom/ca/mdo/ConfigManager;->config:Ljava/util/Map;

    .line 171
    return-void

    .line 167
    :cond_1
    const-string v1, "Not able to read conf file, disabling SDK."

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected parsePlistXML(Landroid/content/Context;)Z
    .locals 20
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v9, 0x0

    .line 77
    .local v9, "keyTag":Z
    const/4 v15, 0x0

    .line 78
    .local v15, "valueTag":Z
    const/4 v8, 0x0

    .line 79
    .local v8, "keyString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 84
    .local v12, "stringValue":Ljava/lang/String;
    :try_start_0
    const-string v1, "camdo.plist"

    .line 85
    .local v1, "confFileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "conf"

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 86
    .local v10, "list":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 88
    aget-object v17, v10, v5

    const-string v18, "camdo.plist"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    aget-object v17, v10, v5

    const-string v18, "camdo.splist"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 89
    :cond_0
    aget-object v1, v10, v5

    .line 90
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Using config file:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 95
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "conf/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 96
    .local v6, "inputStream":Ljava/io/InputStream;
    move-object v7, v6

    .line 98
    .local v7, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 99
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 100
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 101
    .local v16, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v17, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 102
    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v16 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 104
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 105
    .local v3, "event":I
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_6

    .line 107
    packed-switch v3, :pswitch_data_0

    .line 146
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    .line 86
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 114
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "name":Ljava/lang/String;
    const-string v17, "key"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 117
    const/4 v9, 0x1

    .line 118
    const/4 v15, 0x0

    .line 120
    :cond_4
    const-string v17, "string"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 121
    const/4 v15, 0x1

    goto :goto_2

    .line 127
    .end local v11    # "name":Ljava/lang/String;
    :pswitch_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, "text":Ljava/lang/String;
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 130
    if-eqz v9, :cond_5

    .line 131
    if-nez v15, :cond_5

    .line 132
    move-object v8, v13

    .line 134
    :cond_5
    if-eqz v15, :cond_2

    if-eqz v9, :cond_2

    .line 135
    move-object v12, v13

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    const/4 v15, 0x0

    .line 140
    const/4 v9, 0x0

    goto :goto_2

    .line 148
    .end local v1    # "confFileName":Ljava/lang/String;
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "i":I
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "list":[Ljava/lang/String;
    .end local v13    # "text":Ljava/lang/String;
    .end local v16    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/16 v17, 0x0

    .line 154
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return v17

    .line 151
    :catch_1
    move-exception v14

    .line 152
    .local v14, "th":Ljava/lang/Throwable;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v14    # "th":Ljava/lang/Throwable;
    :cond_6
    const/16 v17, 0x1

    goto :goto_3

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected validateConfig()Z
    .locals 7

    .prologue
    .line 35
    iget-object v5, p0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    const-string v6, "tenantID"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    .local v4, "tenantID":Ljava/lang/String;
    iget-object v5, p0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    const-string v6, "appId"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    .local v0, "appId":Ljava/lang/String;
    iget-object v5, p0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    const-string v6, "baseURL"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    .local v2, "baseURL":Ljava/lang/String;
    iget-object v5, p0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    const-string v6, "profileURL"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 39
    .local v3, "profileURL":Ljava/lang/String;
    iget-object v5, p0, Lcom/ca/mdo/ConfigManager;->mHashmap:Ljava/util/Map;

    const-string v6, "appKey"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, "appKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 51
    :goto_0
    return v5

    .line 44
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baseURL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tenantID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profileURL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 51
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method
