.class Lbkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbiq;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lbkb;


# direct methods
.method constructor <init>(Lbkb;Lbiq;JJ)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lbkc;->d:Lbkb;

    iput-object p2, p0, Lbkc;->a:Lbiq;

    iput-wide p3, p0, Lbkc;->b:J

    iput-wide p5, p0, Lbkc;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lbkc;->a:Lbiq;

    iget-wide v2, p0, Lbkc;->b:J

    iget-wide v4, p0, Lbkc;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lbiq;->a(JJ)V

    .line 76
    return-void
.end method
