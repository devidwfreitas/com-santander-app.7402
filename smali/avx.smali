.class public Lavx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/SessionParameters;

.field final synthetic b:Lcom/adjust/sdk/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/SessionParameters;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lavx;->b:Lcom/adjust/sdk/PackageHandler;

    iput-object p2, p0, Lavx;->a:Lcom/adjust/sdk/SessionParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lavx;->b:Lcom/adjust/sdk/PackageHandler;

    iget-object v1, p0, Lavx;->a:Lcom/adjust/sdk/SessionParameters;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/PackageHandler;->updatePackagesI(Lcom/adjust/sdk/SessionParameters;)V

    .line 193
    return-void
.end method
