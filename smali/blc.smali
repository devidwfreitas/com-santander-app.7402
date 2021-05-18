.class final Lblc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbla;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lbla;J)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lblc;->a:Lbla;

    iput-wide p2, p0, Lblc;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lblc;->a:Lbla;

    iget-wide v2, p0, Lblc;->b:J

    invoke-static {v0, v2, v3}, Lbla;->a(Lbla;J)V

    .line 373
    return-void
.end method
