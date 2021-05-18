.class public Lavb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lavb;->d:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lavb;->a:Landroid/content/Context;

    iput-object p3, p0, Lavb;->b:Ljava/lang/String;

    iput-wide p4, p0, Lavb;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 447
    new-instance v0, Lcom/adjust/sdk/SharedPreferencesManager;

    iget-object v1, p0, Lavb;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    .line 448
    iget-object v1, p0, Lavb;->b:Ljava/lang/String;

    iget-wide v2, p0, Lavb;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/adjust/sdk/SharedPreferencesManager;->saveRawReferrer(Ljava/lang/String;J)V

    .line 449
    return-void
.end method
