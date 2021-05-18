.class Ladd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Ladc;


# direct methods
.method constructor <init>(Ladc;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Ladd;->a:Ladc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Ladd;->a:Ladc;

    iget-object v0, v0, Ladc;->a:Lacy;

    invoke-virtual {v0}, Lacy;->j()V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Ladd;->a:Ladc;

    iget-object v0, v0, Ladc;->a:Lacy;

    invoke-virtual {v0}, Lacy;->goBack()V

    return-void
.end method
