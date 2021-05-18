.class Llzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llzp;


# direct methods
.method constructor <init>(Llzp;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Llzs;->a:Llzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Llzs;->a:Llzp;

    invoke-static {v0}, Llzp;->d(Llzp;)V

    .line 161
    return-void
.end method
