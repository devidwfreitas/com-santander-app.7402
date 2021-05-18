.class public Lase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[ChatUtil]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 1564
    if-nez p1, :cond_0

    .line 1565
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 1568
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1569
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/Object;)Lapu;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 732
    if-eqz p0, :cond_2

    .line 736
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lapu;->values()[Lapu;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 739
    invoke-static {}, Lapu;->values()[Lapu;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lapu;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 740
    invoke-static {}, Lapu;->values()[Lapu;

    move-result-object v1

    aget-object v0, v1, v0

    .line 746
    :goto_1
    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    sget-object v0, Lapu;->FileTransfer:Lapu;

    .line 755
    :cond_0
    :goto_2
    return-object v0

    .line 736
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 755
    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Laqa;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1638
    if-eqz p0, :cond_0

    .line 1639
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1640
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1641
    sget-object v2, Laps;->bO:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1642
    invoke-static {v1}, Laqa;->valueOf(Ljava/lang/String;)Laqa;

    move-result-object v0

    .line 1647
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Larj;)Lark;
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 628
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    .line 630
    if-eqz p1, :cond_1

    .line 631
    new-instance v1, Lark;

    sget-object v4, Laqb;->User:Laqb;

    sget-object v5, Lapu;->TextMessageSent:Lapu;

    .line 633
    invoke-static {p0}, Lase;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    :goto_0
    sget-object v7, Laqb;->User:Laqb;

    .line 634
    invoke-virtual {v7}, Laqb;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 635
    invoke-virtual {v0}, Lard;->s()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Lase;->a()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v8, v9}, Lase;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    const-string v10, "0"

    move-object v11, p1

    invoke-direct/range {v1 .. v11}, Lark;-><init>(JLaqb;Lapu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Larj;)V

    .line 639
    :goto_1
    return-object v1

    :cond_0
    move-object v6, p0

    .line 633
    goto :goto_0

    .line 639
    :cond_1
    new-instance v1, Lark;

    sget-object v4, Laqb;->User:Laqb;

    sget-object v5, Lapu;->TextMessageSent:Lapu;

    .line 641
    invoke-static {p0}, Lase;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    :goto_2
    sget-object v7, Laqb;->User:Laqb;

    .line 642
    invoke-virtual {v7}, Laqb;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 643
    invoke-virtual {v0}, Lard;->s()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Lase;->a()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v8, v9}, Lase;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    const-string v10, "0"

    invoke-direct/range {v1 .. v10}, Lark;-><init>(JLaqb;Lapu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v6, p0

    .line 641
    goto :goto_2
.end method

.method public static a(Lorg/json/JSONObject;)Lark;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 650
    if-eqz p0, :cond_2

    .line 652
    const-string v0, "event"

    invoke-static {v0, p0, v1}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->a(Ljava/lang/Object;)Lapu;

    move-result-object v5

    .line 654
    sget-object v0, Lapu;->SessionDisconnected:Lapu;

    if-ne v5, v0, :cond_0

    .line 656
    const-string v0, "msg"

    invoke-static {v0, p0, v1}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->e(Ljava/lang/String;)Lark;

    move-result-object v1

    .line 675
    :goto_0
    return-object v1

    .line 660
    :cond_0
    const-string v0, "id"

    invoke-static {v0, p0, v8}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->e(Ljava/lang/Object;)J

    move-result-wide v2

    .line 661
    const-string v0, "source"

    invoke-static {v0, p0, v1}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->c(Ljava/lang/Object;)Laqb;

    move-result-object v4

    .line 663
    sget-object v0, Lapu;->FileTransfer:Lapu;

    if-eq v5, v0, :cond_1

    const-string v0, "msg"

    .line 664
    invoke-static {v0, p0, v1}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 667
    :goto_1
    const-string v0, "nickname"

    invoke-static {v0, p0, v1}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 668
    const-string v0, "time"

    invoke-static {v0, p0, v8}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->e(Ljava/lang/Object;)J

    move-result-wide v8

    .line 669
    const-string v0, "peerId"

    invoke-static {v0, p0, v1}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 671
    new-instance v1, Lark;

    invoke-direct/range {v1 .. v10}, Lark;-><init>(JLaqb;Lapu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 675
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 688
    if-eqz p1, :cond_0

    .line 689
    const-string v0, "[ChatUtil]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJsonValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lase;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 697
    :goto_0
    return-object v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    const-string v0, "[ChatUtil]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJsonValue JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v0, ""

    goto :goto_0

    .line 697
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 710
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 714
    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 721
    :goto_1
    return-object v0

    .line 710
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 716
    :catch_0
    move-exception v1

    .line 717
    const-string v2, "[ChatUtil]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transcriptParser erro in getJsonValue for key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    .line 718
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " in data "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1443
    if-eqz p0, :cond_0

    .line 1444
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1445
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1446
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1447
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1450
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lark;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1601
    if-eqz p0, :cond_0

    .line 1603
    invoke-virtual {p0}, Lark;->e()Ljava/lang/String;

    move-result-object v0

    .line 1605
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lase;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 421
    if-eqz p0, :cond_2

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 438
    :goto_1
    if-eqz v0, :cond_0

    .line 440
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 445
    :cond_0
    :goto_2
    if-eqz p0, :cond_1

    .line 447
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 454
    :cond_1
    :goto_3
    if-eqz p1, :cond_8

    .line 455
    const-string v0, "[ChatUtil]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readBufferStream"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "from: ["

    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "line.separator"

    .line 458
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data: ["

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "] "

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_2
    return-object v0

    .line 438
    :cond_3
    if-eqz v1, :cond_4

    .line 440
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 445
    :cond_4
    :goto_5
    if-eqz p0, :cond_1

    .line 447
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 448
    :catch_1
    move-exception v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 448
    :catch_2
    move-exception v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 435
    :catch_3
    move-exception v1

    .line 438
    :goto_6
    if-eqz v0, :cond_5

    .line 440
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 445
    :cond_5
    :goto_7
    if-eqz p0, :cond_1

    .line 447
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 448
    :catch_4
    move-exception v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 438
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_8
    if-eqz v1, :cond_6

    .line 440
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 445
    :cond_6
    :goto_9
    if-eqz p0, :cond_7

    .line 447
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 450
    :cond_7
    :goto_a
    throw v0

    .line 448
    :catch_5
    move-exception v1

    .line 449
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 464
    :cond_8
    const-string v0, "[ChatUtil]"

    const-string v1, "readBufferStream: "

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 441
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_9

    .line 438
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 435
    :catch_a
    move-exception v0

    move-object v0, v1

    goto :goto_6

    .line 433
    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 138
    :goto_0
    return-object p0

    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lard;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 195
    const-string v0, "{reason}"

    invoke-virtual {p1}, Lard;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{app}"

    .line 196
    invoke-virtual {p1}, Lard;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{position}"

    .line 197
    invoke-virtual {p1}, Lard;->p()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lase;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 199
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    const-string v2, "[ChatUtil]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonGetValue error get value from key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    if-eqz p0, :cond_0

    .line 218
    const-string v0, "{reason}"

    invoke-static {p1}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{app}"

    .line 219
    invoke-static {p2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{position}"

    .line 220
    invoke-static {p3}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 222
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1925
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1926
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1928
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1929
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1931
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lapz;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 372
    if-eqz p0, :cond_3

    .line 374
    const-string v0, "[ChatUtil]"

    const-string v1, "getHttpURLConnection to:  "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {p0, p2}, Lash;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_1

    .line 379
    if-eqz p1, :cond_2

    .line 380
    invoke-virtual {p1}, Lapz;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lapz;->POST:Lapz;

    invoke-virtual {v2}, Lapz;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-static {v0}, Lase;->a(Ljava/net/HttpURLConnection;)V

    .line 383
    :cond_0
    invoke-virtual {p1}, Lapz;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 396
    :cond_1
    :goto_0
    return-object v0

    .line 386
    :cond_2
    sget-object v1, Lapz;->GET:Lapz;

    invoke-virtual {v1}, Lapz;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_3
    const-string v0, "[ChatUtil]"

    const-string v1, "getHttpURLConnection to: NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;)Ljava/net/HttpURLConnection;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 262
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v8, v5

    invoke-static/range {v0 .. v9}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 6

    .prologue
    const/16 v5, 0x7530

    .line 290
    if-eqz p9, :cond_2

    .line 292
    const-string v0, "[ChatUtil]"

    const-string v1, "getHttpURLConnection to endSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {p0, p1, p4}, Lase;->a(Ljava/lang/String;Lapz;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_1

    .line 296
    invoke-static {p6}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    const-string v1, "RequestSignature"

    invoke-virtual {v0, v1, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "[ChatUtil]"

    const-string v2, "RequestSignature"

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    invoke-static {p8}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    const-string v1, "ChatSessionId"

    invoke-virtual {v0, v1, p8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "[ChatUtil]"

    const-string v2, "ChatSessionId"

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    :goto_0
    return-object v0

    .line 312
    :cond_2
    invoke-static {p0, p1, p4}, Lase;->a(Ljava/lang/String;Lapz;Ljava/io/InputStream;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 314
    const-string v1, "[ChatUtil]"

    const-string v2, "==> HEADER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "[ChatUtil]"

    const-string v2, "HTTP_METHOD:"

    invoke-virtual {p1}, Lapz;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz v0, :cond_1

    .line 318
    if-eqz p7, :cond_3

    invoke-static {v0}, Lase;->a(Ljava/net/HttpURLConnection;)V

    .line 320
    :cond_3
    invoke-static {p2}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 321
    const-string v1, "SessionToken"

    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "[ChatUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionToken"

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_4
    invoke-static {p5}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 326
    const-string v1, "Authorization"

    const-string v2, "Basic"

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "[ChatUtil]"

    const-string v2, "Authorization"

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Basic"

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_5
    invoke-static {p6}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 332
    const-string v1, "RequestSignature"

    invoke-virtual {v0, v1, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "[ChatUtil]"

    const-string v2, "RequestSignature"

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_6
    invoke-static {p8}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 337
    const-string v1, "ChatSessionId"

    invoke-virtual {v0, v1, p8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "[ChatUtil]"

    const-string v2, "ChatSessionId"

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_7
    sget-object v1, Lapz;->POST:Lapz;

    if-ne p1, v1, :cond_8

    .line 342
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 345
    :cond_8
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 347
    const-string v1, "[ChatUtil]"

    const-string v2, "ConnectTimeout "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v1, "[ChatUtil]"

    const-string v2, "Connection ReadTimeout "

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-lez p3, :cond_9

    .line 351
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto/16 :goto_0

    .line 353
    :cond_9
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;ZLjava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 10

    .prologue
    .line 244
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lase;->a(Ljava/lang/String;Lapz;Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 920
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 922
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 925
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_0

    .line 926
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStarted:Lapu;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStopped:Lapu;

    if-ne v3, v4, :cond_0

    .line 927
    :cond_1
    invoke-virtual {v0}, Lark;->i()Z

    move-result v3

    if-nez v3, :cond_0

    .line 929
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 934
    :cond_2
    return-object v1
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 1912
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    :goto_0
    return-void

    .line 1913
    :catch_0
    move-exception v0

    .line 1914
    const-string v0, "[ChatUtil]"

    const-string v1, "wait interruped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1488
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Laph;->ico_squad_chat:I

    .line 1491
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1492
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1493
    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1496
    if-eqz p5, :cond_0

    .line 1497
    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    .line 1498
    invoke-static {p0, v0, p5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1505
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1508
    :cond_0
    const-string v0, "notification"

    .line 1509
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1512
    long-to-int v2, p2

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1514
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1154
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1155
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1156
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1157
    invoke-virtual {v1, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancelar"

    .line 1158
    invoke-virtual {v1, v2, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1160
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1162
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1459
    const-string v0, "[ChatUtil]"

    const-string v1, "loadNewInstanceChat init."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    if-eqz p0, :cond_0

    .line 1463
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lasg;

    invoke-direct {v1}, Lasg;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1472
    :goto_0
    const-string v0, "[ChatUtil]"

    const-string v1, "loadNewInstanceChat end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    return-void

    .line 1470
    :cond_0
    const-string v0, "[ChatUtil]"

    const-string v1, "Erro to open a new chat window, activity base is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1136
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    .prologue
    .line 1141
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 1142
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    .prologue
    .line 1167
    invoke-static {p2}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1172
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1177
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1178
    invoke-virtual {v1, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1182
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 1183
    const-string v1, "Cancelar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1186
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1189
    :cond_1
    return-void
.end method

.method public static a(Lard;)V
    .locals 1

    .prologue
    .line 820
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lase;->f(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const-string v0, "Chat indispon\u00edvel, por favor, reconecte"

    invoke-static {v0}, Lase;->e(Ljava/lang/String;)Lark;

    move-result-object v0

    invoke-virtual {p0, v0}, Lard;->b(Lark;)V

    .line 824
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 1098
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 1110
    invoke-static {p1}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1115
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1119
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1120
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lasf;

    invoke-direct {v3, p3, p2}, Lasf;-><init>(ZLandroid/content/Context;)V

    .line 1121
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1132
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 5

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 485
    if-eqz p0, :cond_0

    .line 487
    :try_start_0
    const-string v0, "[ChatUtil]"

    const-string v2, "writeJsonBody: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 491
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 493
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :cond_0
    if-eqz v1, :cond_1

    .line 512
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    const-string v1, "[ChatUtil]"

    const-string v2, "writeJsonBody Erro IOException metodo close do OutputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 496
    :catch_1
    move-exception v0

    .line 498
    :try_start_2
    const-string v2, "[ChatUtil]"

    const-string v3, "writeJsonBody Erro ao tentar converter em bytes (UTF-8) o texto: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    if-eqz v1, :cond_1

    .line 512
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 513
    :catch_2
    move-exception v0

    .line 514
    const-string v1, "[ChatUtil]"

    const-string v2, "writeJsonBody Erro IOException metodo close do OutputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 500
    :catch_3
    move-exception v0

    .line 502
    :try_start_4
    const-string v2, "[ChatUtil]"

    const-string v3, "writeJsonBody Erro ao tentar escrever o conteudo json na requisicao (httpURLConnection): "

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 510
    if-eqz v1, :cond_1

    .line 512
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 513
    :catch_4
    move-exception v0

    .line 514
    const-string v1, "[ChatUtil]"

    const-string v2, "writeJsonBody Erro IOException metodo close do OutputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 504
    :catch_5
    move-exception v0

    .line 506
    :try_start_6
    const-string v2, "[ChatUtil]"

    const-string v3, "writeJsonBody Erro generico ao tentar escrever o conteudo json na requisicao (httpURLConnection): "

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 510
    if-eqz v1, :cond_1

    .line 512
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 513
    :catch_6
    move-exception v0

    .line 514
    const-string v1, "[ChatUtil]"

    const-string v2, "writeJsonBody Erro IOException metodo close do OutputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 512
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 515
    :cond_2
    :goto_1
    throw v0

    .line 513
    :catch_7
    move-exception v1

    .line 514
    const-string v2, "[ChatUtil]"

    const-string v3, "writeJsonBody Erro IOException metodo close do OutputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 401
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "[ChatUtil]"

    const-string v1, "Accept"

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "[ChatUtil]"

    const-string v1, "Content-Type"

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 1581
    if-eqz p0, :cond_0

    .line 1582
    const-string v0, "connectivity"

    .line 1583
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1585
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1588
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Lapy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 767
    if-eqz p0, :cond_1

    .line 771
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lapy;->values()[Lapy;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 774
    invoke-static {}, Lapy;->values()[Lapy;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lapy;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    invoke-static {}, Lapy;->values()[Lapy;

    move-result-object v1

    aget-object v0, v1, v0

    .line 783
    :goto_1
    return-object v0

    .line 771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 783
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Lark;)Larj;
    .locals 1

    .prologue
    .line 1766
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1768
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1769
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1771
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1772
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {p0}, Lark;->l()Larj;

    move-result-object v0

    .line 1776
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1860
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1863
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1864
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1865
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1867
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1869
    const-string v1, "ContentValues"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "securitySignatureParam String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const-string v1, "ContentValues"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "securitySignatureParam key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const-string v1, "ContentValues"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "securitySignatureParam result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    :goto_0
    return-object v0

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    const-string v1, "[ChatUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "securitySignatureParam error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1879
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1843
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1845
    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    .line 1846
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1845
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1849
    :cond_0
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 946
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 948
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStopped:Lapu;

    if-ne v3, v4, :cond_0

    .line 949
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 953
    :cond_1
    return-object v1
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 1937
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1938
    invoke-virtual {v0}, Lark;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1939
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lark;->h(Z)V

    goto :goto_0

    .line 1942
    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1518
    const-string v0, "[ChatUtil]"

    const-string v1, "Notifica evento app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1522
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1529
    return-void
.end method

.method public static b(Lard;)V
    .locals 5

    .prologue
    .line 1198
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1200
    const-string v0, "[ChatUtil]"

    const-string v1, " cleanEvents getTranscripts size: "

    invoke-virtual {p0}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    invoke-virtual {p0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1205
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStarted:Lapu;

    if-eq v3, v4, :cond_1

    .line 1206
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TypingStopped:Lapu;

    if-ne v3, v4, :cond_0

    .line 1207
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1211
    :cond_2
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1213
    monitor-enter v2

    .line 1214
    :try_start_0
    invoke-virtual {p0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1215
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    const-string v0, "[ChatUtil]"

    const-string v1, " cleanEvents getTranscripts size: "

    invoke-virtual {p0}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_3
    return-void

    .line 1215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1661
    const-string v1, "[ChatUtil]"

    const-string v2, "Check isFilePermitted init."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    if-nez p0, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return v0

    .line 1667
    :cond_1
    const/4 v3, 0x0

    .line 1671
    :try_start_0
    invoke-static {p0}, Lase;->a(Ljava/io/File;)Laqa;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1673
    if-nez v1, :cond_2

    .line 1699
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1700
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1677
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1680
    :try_start_3
    invoke-virtual {v1}, Laqa;->getValue()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    .line 1683
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    .line 1686
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 1699
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1700
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1689
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Laqa;->getValue()[B

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    .line 1699
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 1700
    :catch_2
    move-exception v1

    goto :goto_0

    .line 1691
    :catch_3
    move-exception v1

    move-object v2, v3

    .line 1692
    :goto_1
    :try_start_7
    const-string v3, "[ChatUtil]"

    const-string v4, "Check isFilePermitted FileNotFoundException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1699
    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 1700
    :catch_4
    move-exception v1

    goto :goto_0

    .line 1694
    :catch_5
    move-exception v1

    move-object v2, v3

    .line 1695
    :goto_2
    :try_start_9
    const-string v3, "[ChatUtil]"

    const-string v4, "Check isFilePermitted IOException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1699
    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_0

    .line 1700
    :catch_6
    move-exception v1

    goto :goto_0

    .line 1698
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 1699
    :goto_3
    if-eqz v2, :cond_4

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1701
    :cond_4
    :goto_4
    throw v0

    .line 1700
    :catch_7
    move-exception v1

    goto :goto_4

    .line 1698
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1694
    :catch_8
    move-exception v1

    goto :goto_2

    .line 1691
    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 528
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Laqb;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 795
    if-eqz p0, :cond_1

    .line 799
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laqb;->values()[Laqb;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 801
    invoke-static {}, Laqb;->values()[Laqb;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Laqb;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    invoke-static {}, Laqb;->values()[Laqb;

    move-result-object v1

    aget-object v0, v1, v0

    .line 811
    :goto_1
    return-object v0

    .line 799
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 811
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 543
    :try_start_0
    invoke-static {p0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-static {v1}, Lase;->a(Lorg/json/JSONObject;)Lark;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 555
    :goto_1
    const-string v2, "[ChatUtil]"

    const-string v3, "loadTranscripts Erro JSONException: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 554
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 964
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 966
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 967
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v5, Lapu;->TypingStarted:Lapu;

    if-ne v3, v5, :cond_1

    .line 968
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_1
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v5, Lapu;->TypingStopped:Lapu;

    if-ne v3, v5, :cond_0

    .line 972
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 976
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 978
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 980
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 984
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 985
    const/4 v1, 0x0

    .line 986
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lark;

    .line 988
    invoke-static {v0}, Lase;->a(Lark;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lase;->a(Lark;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 989
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    .line 991
    goto :goto_2

    .line 993
    :cond_4
    if-nez v2, :cond_3

    .line 994
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v3

    .line 1004
    :goto_4
    return-object v0

    :cond_6
    move-object v0, v1

    .line 1000
    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 1004
    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public static c(Lard;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1231
    const/4 v0, 0x1

    .line 1233
    if-nez p0, :cond_0

    move v0, v1

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lard;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1241
    :cond_1
    invoke-virtual {p0}, Lard;->k()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1245
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    if-eqz p0, :cond_0

    .line 834
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1016
    const-string v0, "[ChatUtil]"

    const-string v1, "getTypingNames ini "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const-string v1, ""

    .line 1020
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1022
    const-string v0, "[ChatUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTypingNames has transcript size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1026
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1027
    invoke-static {v0}, Lase;->a(Lark;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lark;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1030
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lase;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1032
    goto :goto_1

    .line 1034
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1035
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1038
    :cond_2
    const-string v0, "[ChatUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTypingNames end retorno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-object v1
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 575
    :try_start_0
    invoke-static {p0}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 581
    const-string v2, "transcriptEvents"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 583
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 587
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 589
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 591
    if-eqz v2, :cond_0

    .line 592
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lase;->a(Lorg/json/JSONObject;)Lark;

    move-result-object v1

    .line 593
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lark;->d(Ljava/lang/String;)V

    .line 594
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 600
    :catch_0
    move-exception v2

    .line 601
    :goto_1
    const-string v3, "[ChatUtil]"

    const-string v4, "loadTranscripts Erro JSONException: "

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    :cond_1
    :goto_2
    return-object v1

    .line 600
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v1, v3

    goto :goto_2
.end method

.method public static d(Lard;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1255
    const/4 v0, 0x1

    .line 1257
    if-nez p0, :cond_0

    move v0, v1

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lard;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1265
    :cond_1
    invoke-virtual {p0}, Lard;->r()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lase;->f(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1269
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/Object;)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 848
    if-eqz p0, :cond_0

    .line 852
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 859
    :cond_0
    :goto_0
    return-wide v0

    .line 854
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Lark;
    .locals 11

    .prologue
    .line 610
    new-instance v1, Lark;

    const-wide/16 v2, -0x1

    sget-object v4, Laqb;->Agent:Laqb;

    sget-object v5, Lapu;->SessionDisconnected:Lapu;

    .line 612
    invoke-static {p0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, ""

    :goto_0
    sget-object v0, Laqb;->Agent:Laqb;

    .line 613
    invoke-virtual {v0}, Laqb;->getValue()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-string v10, "0"

    invoke-direct/range {v1 .. v10}, Lark;-><init>(JLaqb;Lapu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 610
    return-object v1

    :cond_0
    move-object v6, p0

    .line 612
    goto :goto_0
.end method

.method public static e(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1054
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1057
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_1

    .line 1058
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->AgentJoined:Lapu;

    if-ne v3, v4, :cond_1

    .line 1059
    invoke-static {v0}, Lase;->a(Lark;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1064
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_0

    .line 1065
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->AgentLeft:Lapu;

    if-ne v3, v4, :cond_0

    .line 1066
    invoke-static {v0}, Lase;->a(Lark;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1071
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1074
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1078
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1079
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1080
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1083
    :cond_4
    const-string v1, "[ChatUtil]"

    const-string v2, "Lista de gerentes: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return-object v0
.end method

.method public static f(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 871
    if-eqz p0, :cond_0

    .line 875
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 882
    :cond_0
    :goto_0
    return v0

    .line 877
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1618
    invoke-static {p0}, Lase;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return v0

    .line 1622
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 1626
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1279
    const/4 v1, 0x0

    .line 1281
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1284
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    sget-object v3, Lapu;->SessionDisconnected:Lapu;

    if-ne v0, v3, :cond_0

    .line 1285
    const/4 v0, 0x1

    .line 1291
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1945
    const/4 v1, 0x0

    .line 1947
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    :goto_0
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1952
    if-eqz v0, :cond_1

    .line 1953
    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1956
    :cond_0
    :goto_1
    return-object v0

    .line 1948
    :catch_0
    move-exception v0

    .line 1949
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 1955
    :cond_1
    const-string v1, "[ChatUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hostname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static g(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 894
    if-eqz p0, :cond_0

    .line 898
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 900
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1303
    const/4 v1, 0x0

    .line 1305
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1307
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1308
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->AgentJoined:Lapu;

    if-ne v3, v4, :cond_0

    .line 1309
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v0

    sget-object v3, Laqb;->Agent:Laqb;

    if-ne v0, v3, :cond_0

    .line 1310
    const/4 v0, 0x1

    .line 1316
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static h(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1327
    const/4 v1, 0x0

    .line 1329
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1331
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1332
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TextMessageSent:Lapu;

    if-ne v3, v4, :cond_0

    .line 1333
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_0

    .line 1334
    invoke-virtual {v0}, Lark;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x1

    .line 1341
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static i(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1352
    const/4 v1, 0x0

    .line 1354
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1356
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1357
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TextMessageSent:Lapu;

    if-eq v3, v4, :cond_4

    .line 1358
    :cond_1
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->User:Laqb;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TextMessageSent:Lapu;

    if-eq v3, v4, :cond_4

    .line 1359
    :cond_2
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->FileTransfer:Lapu;

    if-eq v3, v4, :cond_4

    .line 1360
    :cond_3
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->User:Laqb;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v0

    sget-object v3, Lapu;->FileTransfer:Lapu;

    if-ne v0, v3, :cond_0

    .line 1361
    :cond_4
    const/4 v0, 0x1

    .line 1367
    :goto_0
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static j(Ljava/util/List;)Lark;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Lark;"
        }
    .end annotation

    .prologue
    .line 1379
    new-instance v1, Lark;

    invoke-direct {v1}, Lark;-><init>()V

    .line 1381
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1383
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1384
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->TextMessageSent:Lapu;

    if-ne v3, v4, :cond_0

    .line 1385
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_0

    .line 1386
    invoke-virtual {v0}, Lark;->i()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1393
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static k(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1404
    .line 1406
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1408
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1410
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->SessionDisconnected:Lapu;

    if-ne v5, v6, :cond_1

    .line 1438
    :cond_0
    :goto_1
    return v2

    .line 1415
    :cond_1
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->TextMessageSent:Lapu;

    if-eq v5, v6, :cond_6

    .line 1416
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->SessionDisconnected:Lapu;

    if-eq v5, v6, :cond_6

    .line 1417
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->TypingStarted:Lapu;

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v5

    sget-object v6, Laqb;->Agent:Laqb;

    if-eq v5, v6, :cond_6

    .line 1418
    :cond_2
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->TypingStopped:Lapu;

    if-ne v5, v6, :cond_3

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v5

    sget-object v6, Laqb;->Agent:Laqb;

    if-eq v5, v6, :cond_6

    .line 1419
    :cond_3
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->AgentJoined:Lapu;

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v5

    sget-object v6, Laqb;->Agent:Laqb;

    if-eq v5, v6, :cond_6

    .line 1420
    :cond_4
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->AgentLeft:Lapu;

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v5

    sget-object v6, Laqb;->Agent:Laqb;

    if-eq v5, v6, :cond_6

    .line 1421
    :cond_5
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v5

    sget-object v6, Lapu;->FileTransfer:Lapu;

    if-ne v5, v6, :cond_7

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v5

    sget-object v6, Laqb;->Agent:Laqb;

    if-ne v5, v6, :cond_7

    .line 1423
    :cond_6
    invoke-virtual {v0}, Lark;->i()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1424
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v5

    sget-object v6, Laqb;->External:Laqb;

    if-ne v5, v6, :cond_8

    .line 1425
    :cond_7
    invoke-virtual {v0}, Lark;->q()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1428
    :cond_8
    const-string v1, "[ChatUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=>> hasNewEvent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1431
    goto/16 :goto_1

    .line 1432
    :cond_9
    invoke-virtual {v0}, Lark;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_2
    move v1, v0

    .line 1435
    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    move v2, v1

    goto/16 :goto_1
.end method

.method public static l(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1544
    invoke-virtual {v0}, Lark;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    const-string v2, "[ChatUtil]"

    const-string v3, "Erro cloneTranscript "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1550
    :cond_0
    return-object v1
.end method

.method public static m(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1711
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1715
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1717
    invoke-virtual {v0}, Lark;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1718
    invoke-virtual {v0}, Lark;->p()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1719
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1724
    :cond_1
    return-object v1
.end method

.method public static n(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Larj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1735
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1739
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1741
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1742
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->l()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1743
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->g()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1744
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1745
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->n()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1746
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->o()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1747
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lase;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1748
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v3

    invoke-virtual {v3}, Larj;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1750
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1755
    :cond_1
    return-object v1
.end method

.method public static o(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1793
    .line 1794
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1795
    invoke-virtual {v0}, Lark;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1796
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    .line 1798
    goto :goto_0

    .line 1799
    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static p(Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1810
    const-wide/16 v0, 0x0

    .line 1812
    if-eqz p0, :cond_0

    .line 1814
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1815
    invoke-virtual {v0}, Lark;->a()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-gez v1, :cond_2

    .line 1816
    invoke-virtual {v0}, Lark;->a()J

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    .line 1818
    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 1821
    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1832
    if-eqz p0, :cond_1

    .line 1833
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1834
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v2

    sget-object v3, Lapu;->AgentJoined:Lapu;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v2

    sget-object v3, Laqb;->Agent:Laqb;

    if-ne v2, v3, :cond_0

    .line 1835
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lark;->a(Z)V

    .line 1840
    :cond_1
    return-void
.end method

.method public static r(Ljava/util/List;)Lark;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)",
            "Lark;"
        }
    .end annotation

    .prologue
    .line 1889
    const/4 v1, 0x0

    .line 1891
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1893
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1894
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v3

    sget-object v4, Lapu;->AgentJoined:Lapu;

    if-ne v3, v4, :cond_0

    .line 1895
    invoke-virtual {v0}, Lark;->b()Laqb;

    move-result-object v3

    sget-object v4, Laqb;->Agent:Laqb;

    if-ne v3, v4, :cond_0

    .line 1902
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
