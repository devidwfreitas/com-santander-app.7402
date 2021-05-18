.class public Lauq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Z)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lauq;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-boolean p2, p0, Lauq;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lauq;->b:Lcom/adjust/sdk/ActivityHandler;

    iget-boolean v1, p0, Lauq;->a:Z

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$1200(Lcom/adjust/sdk/ActivityHandler;Z)V

    .line 361
    return-void
.end method
