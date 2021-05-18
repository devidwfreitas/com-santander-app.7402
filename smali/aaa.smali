.class public Laaa;
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
    .line 29
    const/4 v0, 0x0

    sput v0, Laaa;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "TriggerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt"

    iput-object v0, p0, Laaa;->d:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 23
    sget v0, Laaa;->e:I

    return v0
.end method

.method static synthetic a(Laaa;)Lzz;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Laaa;->b()Lzz;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laaa;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Laaa;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Laaa;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Laaa;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()Lzz;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 104
    .line 106
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 110
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 117
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 119
    :goto_2
    return-object v0

    .line 112
    :cond_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laaa;->c(Ljava/lang/String;)Lzz;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 117
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 118
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 119
    goto :goto_2

    .line 118
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 119
    goto :goto_2

    .line 116
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 117
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    throw v0

    .line 118
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 119
    goto :goto_2

    .line 116
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 113
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Laaa;->b:Landroid/content/Context;

    const-string v1, "logs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget v0, Laaa;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laaa;->e:I

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    sput v2, Laaa;->e:I

    .line 71
    const/4 v0, 0x1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lzz;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 125
    const/16 v0, 0x2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    aget-object v1, v0, v5

    .line 129
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

    .line 130
    aget-object v0, v0, v4

    const-string v2, "name:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    aget-object v0, v0, v4

    const-string v2, "value:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    aget-object v2, v0, v5

    .line 149
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 150
    new-instance v3, Lzz;

    invoke-direct {v3}, Lzz;-><init>()V

    .line 151
    invoke-virtual {v3, v2}, Lzz;->a(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3, v0}, Lzz;->b(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3, v1}, Lzz;->c(Ljava/lang/String;)V

    .line 154
    return-object v3

    .line 133
    :cond_1
    aget-object v2, v0, v5

    const-string v3, "stopApplicationTransaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    aget-object v0, v0, v4

    const-string v2, "transactionName:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    aget-object v2, v0, v5

    const-string v3, "startApplicationTransaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    aget-object v0, v0, v4

    const-string v2, "transactionName:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    aget-object v0, v0, v4

    const-string v2, "serviceName:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_3
    aget-object v2, v0, v5

    const-string v3, "setSessionAttributeTypeText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    aget-object v0, v0, v4

    const-string v2, "name:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
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
    .line 91
    iget-object v0, p0, Laaa;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    new-instance v1, Laac;

    invoke-direct {v1, p0, p1}, Laac;-><init>(Laaa;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 39
    const-string v0, "TRIGGER"

    const-string v1, "Trigger Service onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 85
    iput-boolean v2, p0, Laaa;->a:Z

    .line 86
    const/4 v0, 0x0

    sput-object v0, Laaa;->c:Landroid/os/FileObserver;

    .line 87
    iget-object v0, p0, Laaa;->b:Landroid/content/Context;

    const-string v1, "Trigger service has stoped"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Laaa;->a:Z

    .line 45
    :cond_0
    :goto_0
    iget-boolean v0, p0, Laaa;->a:Z

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Laaa;->c:Landroid/os/FileObserver;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Laab;

    const-string v1, "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt"

    invoke-direct {v0, p0, v1}, Laab;-><init>(Laaa;Ljava/lang/String;)V

    sput-object v0, Laaa;->c:Landroid/os/FileObserver;

    .line 59
    sget-object v0, Laaa;->c:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Laaa;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laaa;->b:Landroid/content/Context;

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
