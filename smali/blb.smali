.class final Lblb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbla;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbla;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lblb;->a:Lbla;

    iput-wide p2, p0, Lblb;->b:J

    iput-object p4, p0, Lblb;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lblb;->a:Lbla;

    iget-wide v2, p0, Lblb;->b:J

    iget-object v1, p0, Lblb;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lbla;->a(Lbla;JLjava/lang/String;)V

    .line 314
    return-void
.end method
