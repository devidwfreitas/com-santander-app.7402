.class Lknl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lknj;


# direct methods
.method constructor <init>(Lknj;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lknl;->b:Lknj;

    iput-object p2, p0, Lknl;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lknl;->b:Lknj;

    iget-object v1, p0, Lknl;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1, p2, p3, p4}, Lknj;->a(Landroid/widget/Button;III)V

    .line 81
    return-void
.end method
