.class Ljot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljoj;


# instance fields
.field final synthetic a:Ljoj;

.field final synthetic b:Ljos;


# direct methods
.method constructor <init>(Ljos;Ljoj;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Ljot;->b:Ljos;

    iput-object p2, p0, Ljot;->a:Ljoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljnc;)V
    .locals 1
    .param p1    # Ljnc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    iget-object v0, p0, Ljot;->b:Ljos;

    invoke-static {v0}, Ljos;->a(Ljos;)Lmip;

    move-result-object v0

    invoke-interface {v0, p1}, Lmip;->a(Ljnc;)V

    .line 42
    iget-object v0, p0, Ljot;->a:Ljoj;

    invoke-interface {v0, p1}, Ljoj;->a(Ljnc;)V

    .line 43
    return-void
.end method
