.class Lcom/ca/mdo/CaMDOProgressBarImpl;
.super Ljava/lang/Object;
.source "CaMDOProgressBarImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setVisibility(Landroid/widget/ProgressBar;I)V
    .locals 14
    .param p0, "bar"    # Landroid/widget/ProgressBar;
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 15
    const-string v0, "Logged here......in progress bar"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "barUniqueId":Ljava/lang/String;
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 22
    .local v4, "endMilliSeconds":J
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":startms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 23
    .local v12, "startedMilliSeconds":J
    cmp-long v0, v12, v8

    if-eqz v0, :cond_1

    .line 24
    sub-long v2, v4, v12

    .line 25
    .local v2, "interval":J
    const-string v0, "end"

    invoke-static/range {v0 .. v5}, Lcom/ca/mdo/CAMobileDevOps;->progressBarEvent(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 28
    .end local v2    # "interval":J
    :cond_1
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":startms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    .end local v4    # "endMilliSeconds":J
    .end local v12    # "startedMilliSeconds":J
    :goto_0
    return-void

    .line 32
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 33
    .local v10, "startMilliSeconds":J
    const-string v6, "start"

    const-wide/16 v8, 0x0

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Lcom/ca/mdo/CAMobileDevOps;->progressBarEvent(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 34
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":startms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
