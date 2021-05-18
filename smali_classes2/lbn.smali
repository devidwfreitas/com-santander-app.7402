.class Llbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llbl;


# direct methods
.method constructor <init>(Llbl;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Llbn;->a:Llbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Llbn;->a:Llbl;

    invoke-static {v0}, Llbl;->b(Llbl;)V

    .line 145
    return-void
.end method
