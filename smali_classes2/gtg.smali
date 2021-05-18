.class public Lgtg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgti;

.field private c:Lgtb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgti;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgtg;->a:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lgtg;->b:Lgti;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgth;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lgtb;

    iget-object v1, p0, Lgtg;->a:Landroid/app/Activity;

    iget-object v2, p0, Lgtg;->b:Lgti;

    invoke-direct {v0, v1, v2, p1}, Lgtb;-><init>(Landroid/app/Activity;Lgti;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lgtg;->c:Lgtb;

    .line 27
    iget-object v0, p0, Lgtg;->c:Lgtb;

    invoke-virtual {v0}, Lgtb;->show()V

    .line 28
    return-void
.end method
