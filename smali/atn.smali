.class public Latn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;JJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Latn;->d:Lcom/adjust/sdk/ActivityHandler;

    iput-wide p2, p0, Latn;->a:J

    iput-wide p4, p0, Latn;->b:J

    iput-object p6, p0, Latn;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 442
    iget-object v1, p0, Latn;->d:Lcom/adjust/sdk/ActivityHandler;

    iget-wide v2, p0, Latn;->a:J

    iget-wide v4, p0, Latn;->b:J

    iget-object v6, p0, Latn;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/adjust/sdk/ActivityHandler;->access$1600(Lcom/adjust/sdk/ActivityHandler;JJLjava/lang/String;)V

    .line 443
    return-void
.end method
