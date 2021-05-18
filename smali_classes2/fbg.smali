.class Lfbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfcb;


# instance fields
.field final synthetic a:Lfcb;

.field final synthetic b:Lfba;


# direct methods
.method constructor <init>(Lfba;Lfcb;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lfbg;->b:Lfba;

    iput-object p2, p0, Lfbg;->a:Lfcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;F)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lfbg;->b:Lfba;

    invoke-static {v0}, Lfba;->a(Lfba;)Lfcb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfcb;->a(Landroid/graphics/Canvas;F)V

    .line 89
    iget-object v0, p0, Lfbg;->a:Lfcb;

    invoke-interface {v0, p1, p2}, Lfcb;->a(Landroid/graphics/Canvas;F)V

    .line 90
    return-void
.end method
