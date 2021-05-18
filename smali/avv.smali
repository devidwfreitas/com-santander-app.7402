.class public Lavv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lavv;->a:Lcom/adjust/sdk/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lavv;->a:Lcom/adjust/sdk/PackageHandler;

    invoke-static {v0}, Lcom/adjust/sdk/PackageHandler;->access$300(Lcom/adjust/sdk/PackageHandler;)V

    .line 123
    return-void
.end method
