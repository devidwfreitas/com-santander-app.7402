.class public Lcom/santander/app/analytics/util/TriggerService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static c:Landroid/os/FileObserver;

.field private static e:I


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/santander/app/analytics/util/TriggerService;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "TriggerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt"

    iput-object v0, p0, Lcom/santander/app/analytics/util/TriggerService;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/santander/app/analytics/util/TriggerService;->e:I

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/analytics/util/TriggerService;)Lfsd;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/analytics/util/TriggerService;->b()Lfsd;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/analytics/util/TriggerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/santander/app/analytics/util/TriggerService;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/analytics/util/TriggerService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/santander/app/analytics/util/TriggerService;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()Lfsd;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    .line 107
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 118
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 120
    :goto_2
    return-object v0

    .line 113
    :cond_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/analytics/util/TriggerService;->c(Ljava/lang/String;)Lfsd;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 118
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 119
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 120
    goto :goto_2

    .line 119
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 120
    goto :goto_2

    .line 117
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 118
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 120
    throw v0

    .line 119
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 120
    goto :goto_2

    .line 117
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 114
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/analytics/util/TriggerService;->b:Landroid/content/Context;

    const-string v1, "trigger_logs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 66
    const-string v2, "nothing"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget v0, Lcom/santander/app/analytics/util/TriggerService;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/santander/app/analytics/util/TriggerService;->e:I

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/santander/app/analytics/util/TriggerService;->e:I

    .line 70
    invoke-interface {v1, p1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lfsd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    const/16 v0, 0x2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    aget-object v1, v0, v5

    .line 130
    aget-object v2, v0, v4

    const-string v3, "name:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v4

    const-string v3, "value:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    aget-object v0, v0, v4

    const-string v2, "name:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    aget-object v0, v0, v4

    const-string v2, "value:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    :goto_0
    aget-object v2, v0, v5

    .line 150
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 151
    new-instance v3, Lfsd;

    invoke-direct {v3}, Lfsd;-><init>()V

    .line 152
    invoke-virtual {v3, v2}, Lfsd;->a(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3, v0}, Lfsd;->b(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3, v1}, Lfsd;->c(Ljava/lang/String;)V

    .line 155
    return-object v3

    .line 134
    :cond_1
    aget-object v2, v0, v5

    const-string v3, "stopApplicationTransaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    aget-object v0, v0, v4

    const-string v2, "transactionName:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    aget-object v2, v0, v5

    const-string v3, "startApplicationTransaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    aget-object v0, v0, v4

    const-string v2, "transactionName:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    aget-object v0, v0, v4

    const-string v2, "serviceName:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_3
    aget-object v2, v0, v5

    const-string v3, "setSessionAttributeTypeText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    aget-object v0, v0, v4

    const-string v2, "name:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    aget-object v0, v0, v4

    const-string v2, "value:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/santander/app/analytics/util/TriggerService;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    new-instance v1, Lfsf;

    invoke-direct {v1, p0, p1}, Lfsf;-><init>(Lcom/santander/app/analytics/util/TriggerService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 86
    iput-boolean v2, p0, Lcom/santander/app/analytics/util/TriggerService;->a:Z

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/santander/app/analytics/util/TriggerService;->c:Landroid/os/FileObserver;

    .line 88
    iget-object v0, p0, Lcom/santander/app/analytics/util/TriggerService;->b:Landroid/content/Context;

    const-string v1, "Trigger service has stoped"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/analytics/util/TriggerService;->a:Z

    .line 44
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/santander/app/analytics/util/TriggerService;->a:Z

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/santander/app/analytics/util/TriggerService;->c:Landroid/os/FileObserver;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lfse;

    const-string v1, "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt"

    invoke-direct {v0, p0, v1}, Lfse;-><init>(Lcom/santander/app/analytics/util/TriggerService;Ljava/lang/String;)V

    sput-object v0, Lcom/santander/app/analytics/util/TriggerService;->c:Landroid/os/FileObserver;

    .line 58
    sget-object v0, Lcom/santander/app/analytics/util/TriggerService;->c:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/santander/app/analytics/util/TriggerService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/analytics/util/TriggerService;->b:Landroid/content/Context;

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
