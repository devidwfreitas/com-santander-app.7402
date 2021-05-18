.class public Lavt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/ActivityPackage;

.field final synthetic b:Lcom/adjust/sdk/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lavt;->b:Lcom/adjust/sdk/PackageHandler;

    iput-object p2, p0, Lavt;->a:Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lavt;->b:Lcom/adjust/sdk/PackageHandler;

    iget-object v1, p0, Lavt;->a:Lcom/adjust/sdk/ActivityPackage;

    invoke-static {v0, v1}, Lcom/adjust/sdk/PackageHandler;->access$100(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V

    .line 100
    return-void
.end method
