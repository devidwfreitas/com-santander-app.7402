.class Lbzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbzw;


# direct methods
.method constructor <init>(Lbzw;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lbzx;->a:Lbzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lbzx;->a:Lbzw;

    iget-object v1, p0, Lbzx;->a:Lbzw;

    iget v1, v1, Lbzw;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lbzw;->a(I)V

    .line 607
    return-void
.end method
