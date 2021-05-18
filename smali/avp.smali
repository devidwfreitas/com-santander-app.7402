.class public Lavp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/InstallReferrer;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/InstallReferrer;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lavp;->a:Lcom/adjust/sdk/InstallReferrer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lavp;->a:Lcom/adjust/sdk/InstallReferrer;

    invoke-virtual {v0}, Lcom/adjust/sdk/InstallReferrer;->startConnection()V

    .line 110
    return-void
.end method
