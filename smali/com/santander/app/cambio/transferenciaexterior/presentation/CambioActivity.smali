.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lgce;
.implements Lgtx;


# instance fields
.field private A:Lcom/santander/app/components/view/SantanderTextView;

.field private B:Lcom/santander/app/components/view/SantanderTextView;

.field private C:Lcom/santander/app/components/view/SantanderTextView;

.field private D:Lcom/santander/app/components/view/SantanderTextView;

.field private E:Lcom/santander/app/components/view/SantanderTextView;

.field private F:Landroid/support/design/widget/TextInputLayout;

.field private G:Landroid/support/design/widget/TextInputLayout;

.field private H:Landroid/support/design/widget/TextInputLayout;

.field private I:Lcom/santander/app/components/view/SantanderEditText;

.field private J:Lcom/santander/app/components/view/SantanderEditText;

.field private K:Lcom/santander/app/components/view/SantanderButtonView;

.field private L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

.field private M:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private N:Lcom/santander/app/contacorrente/domain/Conta;

.field private O:Lgdk;

.field private P:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private Q:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private R:Lgaz;

.field private S:Lgaz;

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgaz;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lgte;

.field private V:Landroid/view/View$OnClickListener;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/widget/ImageView;

.field private Y:Lgaq;

.field private Z:Z

.field private a:Landroid/widget/LinearLayout;

.field private aa:Landroid/app/Dialog;

.field private ab:Lgui;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Lcom/santander/app/components/view/SantanderTextView;

.field private z:Lcom/santander/app/components/view/SantanderTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->N:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lgaz;)Lgaz;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lgui;)Lgui;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->ab:Lgui;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cambio_dados"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgaq;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Y:Lgaq;

    .line 119
    const v0, 0x7f100aac

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    .line 120
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->setTimerInterface(Lgtx;)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->n()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->M:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 125
    new-instance v0, Lgdl;

    invoke-direct {v0, p0}, Lgdl;-><init>(Lgce;)V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->O:Lgdk;

    .line 128
    const v0, 0x7f100a92

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->F:Landroid/support/design/widget/TextInputLayout;

    .line 129
    const v0, 0x7f100a9a

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->G:Landroid/support/design/widget/TextInputLayout;

    .line 130
    const v0, 0x7f100a94

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->H:Landroid/support/design/widget/TextInputLayout;

    .line 133
    const v0, 0x7f100aa0

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    .line 134
    const v0, 0x7f100aa7

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->A:Lcom/santander/app/components/view/SantanderTextView;

    .line 135
    const v0, 0x7f100aaa

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->C:Lcom/santander/app/components/view/SantanderTextView;

    .line 136
    const v0, 0x7f100aa2

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->B:Lcom/santander/app/components/view/SantanderTextView;

    .line 137
    const v0, 0x7f100aa4

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->D:Lcom/santander/app/components/view/SantanderTextView;

    .line 138
    const v0, 0x7f100a97

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    .line 141
    const v0, 0x7f100a9f

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d:Landroid/widget/LinearLayout;

    .line 142
    const v0, 0x7f100aa5

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->e:Landroid/widget/LinearLayout;

    .line 143
    const v0, 0x7f100aa8

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->g:Landroid/widget/LinearLayout;

    .line 144
    const v0, 0x7f100aa1

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->f:Landroid/widget/LinearLayout;

    .line 145
    const v0, 0x7f100aa3

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->w:Landroid/widget/LinearLayout;

    .line 146
    const v0, 0x7f100a9c

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->x:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x7f100aa6

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->W:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->W:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->n()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f100aa9

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->X:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->X:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->n()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f100aab

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->K:Lcom/santander/app/components/view/SantanderButtonView;

    .line 155
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->K:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->n()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->T:Ljava/util/List;

    .line 159
    const v0, 0x7f100a95

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    .line 160
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnKeyPreIme(Z)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    const v0, 0x7f100a96

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->c:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f100a99

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->b:Landroid/widget/LinearLayout;

    .line 165
    const v0, 0x7f100a98

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    .line 166
    const v0, 0x7f100a9e

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->J:Lcom/santander/app/components/view/SantanderEditText;

    .line 167
    new-instance v0, Lgui;

    invoke-direct {v0}, Lgui;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->J:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, v1}, Lgui;->a(Landroid/widget/EditText;)V

    .line 169
    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->J:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    const v0, 0x7f100a93

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->P:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 172
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->P:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Lgbw;

    invoke-direct {v1, p0}, Lgbw;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 196
    const v0, 0x7f100a9b

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 197
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Lgbx;

    invoke-direct {v1, p0}, Lgbx;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 207
    new-instance v0, Lgte;

    new-instance v1, Lgby;

    invoke-direct {v1, p0}, Lgby;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    invoke-direct {v0, p0, v1}, Lgte;-><init>(Landroid/app/Activity;Lgti;)V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->U:Lgte;

    .line 215
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->O:Lgdk;

    invoke-interface {v0}, Lgdk;->a()V

    .line 216
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->P:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;Lgaz;)Lgaz;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    return-object p1
.end method

.method public static synthetic c(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgui;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->ab:Lgui;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/SantanderEditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const v6, 0x7f0901f2

    const v5, 0x7f0901f1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    .line 224
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->T:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v2, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 234
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    invoke-virtual {v0}, Lgaz;->b()Lgba;

    move-result-object v0

    sget-object v2, Lgba;->real:Lgba;

    invoke-virtual {v0, v2}, Lgba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/ClickToSelectEditText;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/ClickToSelectEditText;->setClickable(Z)V

    .line 238
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->F:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->G:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->h()V

    .line 268
    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/ClickToSelectEditText;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/ClickToSelectEditText;->setClickable(Z)V

    .line 246
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->F:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->G:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgaz;

    .line 250
    invoke-virtual {v0}, Lgaz;->b()Lgba;

    move-result-object v3

    sget-object v4, Lgba;->real:Lgba;

    invoke-virtual {v3, v4}, Lgba;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0}, Lgaz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    if-nez v0, :cond_4

    .line 258
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->f()Lgaz;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    .line 261
    :cond_4
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->p()V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->e()V

    return-void
.end method

.method private f()Lgaz;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lgaz;

    invoke-direct {v0}, Lgaz;-><init>()V

    .line 273
    const-string v1, "S"

    invoke-virtual {v0, v1}, Lgaz;->d(Ljava/lang/String;)V

    .line 274
    const-string v1, "15"

    invoke-virtual {v0, v1}, Lgaz;->c(Ljava/lang/String;)V

    .line 275
    const-string v1, "REAL BRASIL"

    invoke-virtual {v0, v1}, Lgaz;->a(Ljava/lang/String;)V

    .line 276
    const-string v1, "BRL"

    invoke-virtual {v0, v1}, Lgaz;->b(Ljava/lang/String;)V

    .line 277
    sget-object v1, Lgba;->real:Lgba;

    invoke-virtual {v0, v1}, Lgaz;->a(Lgba;)V

    .line 279
    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaz;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Q:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method

.method private g()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->p()V

    .line 286
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->g()V

    return-void
.end method

.method public static synthetic i(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgte;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->U:Lgte;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public static synthetic j(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgaq;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Y:Lgaq;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->J:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->K:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setVisibility(I)V

    .line 310
    return-void
.end method

.method public static synthetic k(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->N:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/16 v1, 0x8

    .line 313
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->K:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->J:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderEditText;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b()V

    .line 325
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 327
    return-void
.end method

.method public static synthetic l(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Lgdk;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->O:Lgdk;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->p()V

    return-void
.end method

.method public static synthetic n(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->aa:Landroid/app/Dialog;

    return-object v0
.end method

.method private n()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->V:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lgbz;

    invoke-direct {v0, p0}, Lgbz;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->V:Landroid/view/View$OnClickListener;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->V:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->P:Lcom/santander/app/components/view/ClickToSelectEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iput-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    .line 381
    iput-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    .line 382
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->k()V

    .line 383
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->i()V

    .line 384
    return-void
.end method

.method private p()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 388
    iget-boolean v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "0,00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    invoke-virtual {v0}, Lgaz;->b()Lgba;

    move-result-object v0

    sget-object v1, Lgba;->real:Lgba;

    invoke-virtual {v0, v1}, Lgba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iput-boolean v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    .line 392
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->O:Lgdk;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->N:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v0, v1, v3, v2}, Lgdk;->a(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Z)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "0,00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->O:Lgdk;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    iget-object v4, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Y:Lgaq;

    invoke-virtual {v4}, Lgaq;->o()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Y:Lgaq;

    invoke-virtual {v5}, Lgaq;->n()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lgdk;->a(Lgaz;Lgaz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 332
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    .line 337
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->O:Lgdk;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->S:Lgaz;

    iget-object v4, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Y:Lgaq;

    invoke-virtual {v4}, Lgaq;->o()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Y:Lgaq;

    invoke-virtual {v5}, Lgaq;->n()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lgdk;->a(Lgaz;Lgaz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 345
    return-void
.end method

.method public a(Lgaq;)V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b()V

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioClausulasContratuaisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const-string v1, "cambio_dados"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 472
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 473
    return-void
.end method

.method public a(Lgbc;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 430
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->H:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Lmzv;->a(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->setTempoMaximo(J)V

    .line 433
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 434
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a()V

    .line 436
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgbc;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->J:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {p1}, Lgbc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgbc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->B:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgbc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgbc;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->A:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgbc;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->C:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lgbc;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->j()V

    .line 445
    iput-boolean v4, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    .line 446
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->O:Lgdk;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->N:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {p1}, Lgbc;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lgdk;->a(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Z)V

    .line 447
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    .line 452
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgcb;

    invoke-direct {v2, p0}, Lgcb;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    invoke-static {v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->aa:Landroid/app/Dialog;

    .line 458
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->M:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lamy;

    invoke-direct {v1, p1}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 408
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->M:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lgca;

    invoke-direct {v1, p0}, Lgca;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 419
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->o()V

    .line 402
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->U:Lgte;

    sget-object v1, Lgtd;->CAMBIO_TIMER_TEMPO_ESGOTADO:Lgtd;

    invoke-virtual {v0, v1}, Lgte;->a(Lgtd;)V

    .line 403
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgaz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 424
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->P:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 426
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    .line 463
    const v0, 0x7f0901d3

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->H:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0, v1}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 464
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->k()V

    .line 478
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->U:Lgte;

    sget-object v1, Lgtd;->CAMBIO_SALDO_INSUFICIENTE:Lgtd;

    invoke-virtual {v0, v1}, Lgte;->a(Lgtd;)V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->Z:Z

    .line 480
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 484
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 486
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 487
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->o()V

    .line 488
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 517
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 518
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 93
    const v1, 0x7f0901fe

    invoke-virtual {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->a(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->L:Lcom/santander/app/components/view/floatingTimer/FloatingTimer;

    invoke-virtual {v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b()V

    .line 110
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->o()V

    .line 111
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 112
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->k()V

    .line 497
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 512
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 500
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->R:Lgaz;

    if-eqz v0, :cond_1

    .line 503
    const-string v0, "ServicosInternacionais_Cambio_Cambio_MoedaEstrangeiraValor_Acao"

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->I:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v1}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->h()V

    .line 507
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/CambioActivity;->p()V

    goto :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lgrs;->onResume()V

    .line 105
    return-void
.end method
