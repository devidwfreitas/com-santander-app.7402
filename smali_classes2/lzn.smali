.class Llzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llzi;


# direct methods
.method constructor <init>(Llzi;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Llzn;->a:Llzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Llzn;->a:Llzi;

    invoke-virtual {v0}, Llzi;->a()V

    .line 338
    return-void
.end method
