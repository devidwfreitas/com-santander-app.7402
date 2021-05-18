.class public Lavy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/ActivityPackage;

.field final synthetic b:I

.field final synthetic c:Lcom/adjust/sdk/RequestHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lavy;->c:Lcom/adjust/sdk/RequestHandler;

    iput-object p2, p0, Lavy;->a:Lcom/adjust/sdk/ActivityPackage;

    iput p3, p0, Lavy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lavy;->c:Lcom/adjust/sdk/RequestHandler;

    iget-object v1, p0, Lavy;->a:Lcom/adjust/sdk/ActivityPackage;

    iget v2, p0, Lavy;->b:I

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/RequestHandler;->access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    .line 41
    return-void
.end method
