.class public Laur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:J

.field final synthetic c:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V
    .locals 1

    .prologue
    .line 380
    iput-object p1, p0, Laur;->c:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Laur;->a:Landroid/net/Uri;

    iput-wide p3, p0, Laur;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Laur;->c:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Laur;->a:Landroid/net/Uri;

    iget-wide v2, p0, Laur;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->access$1300(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V

    .line 384
    return-void
.end method
