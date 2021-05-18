.class public Lavd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lavd;->b:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lavd;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Lcom/adjust/sdk/SharedPreferencesManager;

    iget-object v1, p0, Lavd;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->setSendingReferrersAsNotSent()V

    .line 478
    return-void
.end method
