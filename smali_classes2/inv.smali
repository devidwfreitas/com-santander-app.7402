.class Linv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Linu;


# direct methods
.method constructor <init>(Linu;I)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Linv;->b:Linu;

    iput p2, p0, Linv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Linv;->b:Linu;

    invoke-static {v0}, Linu;->a(Linu;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Linv;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->a(Ljava/lang/Boolean;)V

    .line 76
    return-void
.end method
