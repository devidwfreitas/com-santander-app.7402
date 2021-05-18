.class final Lcom/ca/org/acra/ACRA$1;
.super Ljava/lang/Object;
.source "ACRA.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/org/acra/ACRA;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v1, "acra.disable"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "acra.enable"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/ca/org/acra/ACRA;->access$000(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 165
    .local v0, "enableAcra":Z
    :goto_0
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getErrorReporter()Lcom/ca/org/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ca/org/acra/ErrorReporter;->setEnabled(Z)V

    .line 167
    .end local v0    # "enableAcra":Z
    :cond_1
    return-void

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
