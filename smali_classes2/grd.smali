.class synthetic Lgrd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1803
    invoke-static {}, Lipp;->values()[Lipp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgrd;->b:[I

    :try_start_0
    sget-object v0, Lgrd;->b:[I

    sget-object v1, Lipp;->POUPANCA_MENU_ITEM:Lipp;

    invoke-virtual {v1}, Lipp;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_56

    :goto_0
    :try_start_1
    sget-object v0, Lgrd;->b:[I

    sget-object v1, Lipp;->CARTAO_MENU_ITEM:Lipp;

    invoke-virtual {v1}, Lipp;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_55

    .line 477
    :goto_1
    invoke-static {}, Ljox;->values()[Ljox;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgrd;->a:[I

    :try_start_2
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_HOME:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_54

    :goto_2
    :try_start_3
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_LOJA_ONLINE:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_53

    :goto_3
    :try_start_4
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_WAY:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_52

    :goto_4
    :try_start_5
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_ULTIMAS_COMPRAS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_51

    :goto_5
    :try_start_6
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_GERAR_CARTAO_VIRTUAL:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_50

    :goto_6
    :try_start_7
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_PONTOS_ESFERA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4f

    :goto_7
    :try_start_8
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_FATURAS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4e

    :goto_8
    :try_start_9
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_PAGAMENTO_FATURA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4d

    :goto_9
    :try_start_a
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_PARCELAMENTO_FATURA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4c

    :goto_a
    :try_start_b
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_EMAIL_FATURA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4b

    :goto_b
    :try_start_c
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_DESBLOQUEIO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4a

    :goto_c
    :try_start_d
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_PGTO_TITULOS_CONTAS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_49

    :goto_d
    :try_start_e
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_PGTO_TITULOS_CARTORIOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_48

    :goto_e
    :try_start_f
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_CAD_DEBITO_AUTOMATICO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_47

    :goto_f
    :try_start_10
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_PGTO_TITULOS_PUBLICOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_46

    :goto_10
    :try_start_11
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_DDA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_45

    :goto_11
    :try_start_12
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_CARTAO_DE_CREDITO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_44

    :goto_12
    :try_start_13
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_PAGAMENTOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_43

    :goto_13
    :try_start_14
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_TRANSFERENCIA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_42

    :goto_14
    :try_start_15
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_RECARGAR:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_41

    :goto_15
    :try_start_16
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_AGENDAMENTOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_40

    :goto_16
    :try_start_17
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_INVESTIMENTOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_3f

    :goto_17
    :try_start_18
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_MEUS_INVESTIMENTOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_3e

    :goto_18
    :try_start_19
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_CANCELAR_INVESTIMENTO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_3d

    :goto_19
    :try_start_1a
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_EMPRESTIMOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3c

    :goto_1a
    :try_start_1b
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_AGENCIAS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_3b

    :goto_1b
    :try_start_1c
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_AJUDA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3a

    :goto_1c
    :try_start_1d
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_FINGERPRINT:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_39

    :goto_1d
    :try_start_1e
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_TROCA_DE_SENHA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_38

    :goto_1e
    :try_start_1f
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_SOLICITAR_CSO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_37

    :goto_1f
    :try_start_20
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_ATIVAR_CSO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_36

    :goto_20
    :try_start_21
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_INVESTIMENTO_NO_ATM:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_35

    :goto_21
    :try_start_22
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_SINCRONIZAR_ID_SANTANDER:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_34

    :goto_22
    :try_start_23
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_HABILITAR_OUTRO_DEVICE:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_33

    :goto_23
    :try_start_24
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_ID_SANTANDER:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_32

    :goto_24
    :try_start_25
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ESCOLHA_CONTA_PREFERENCIAL:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_31

    :goto_25
    :try_start_26
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ID_URA_QR_IB:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_30

    :goto_26
    :try_start_27
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_SEGUNDA_VIA_COMPROVANTES:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_2f

    :goto_27
    :try_start_28
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_MEU_PERFIL:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_2e

    :goto_28
    :try_start_29
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_SAIR:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_2d

    :goto_29
    :try_start_2a
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_PHOTO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2c

    :goto_2a
    :try_start_2b
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_ABRA_SUA_CONTA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :goto_2b
    :try_start_2c
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_POUPANCA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2a

    :goto_2c
    :try_start_2d
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_HAB_CART_EXT:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_29

    :goto_2d
    :try_start_2e
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_SIMULAR_CONTRATAR:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_28

    :goto_2e
    :try_start_2f
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_ANTECIPACAO_DT:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_27

    :goto_2f
    :try_start_30
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_ANTECIPACAO_IR:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_26

    :goto_30
    :try_start_31
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_SOLICITE_SEU_CARTAO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_25

    :goto_31
    :try_start_32
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_RENEGOCIACAO_SIMULAR:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_24

    :goto_32
    :try_start_33
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_RENEGOCIACAO_CANCELAR:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_23

    :goto_33
    :try_start_34
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_MEUS_EMPRESTIMOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_22

    :goto_34
    :try_start_35
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_BLOQUEIO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_21

    :goto_35
    :try_start_36
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_CAMBIO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_20

    :goto_36
    :try_start_37
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_TRANSF_EXTERIOR:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_1f

    :goto_37
    :try_start_38
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_POLITICIA_PRIVACIDADE_GOOGLE:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_1e

    :goto_38
    :try_start_39
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_CONFIGURACAO_NOTIFICACAO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_1d

    :goto_39
    :try_start_3a
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_SEGUROS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_1c

    :goto_3a
    :try_start_3b
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_MEUS_SEGUROS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_1b

    :goto_3b
    :try_start_3c
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_MEUS_SINISTROS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_1a

    :goto_3c
    :try_start_3d
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_MINHAS_ASSISTENCIAS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_19

    :goto_3d
    :try_start_3e
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_CONTRATAR_SEGURO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_18

    :goto_3e
    :try_start_3f
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_CHAT:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_17

    :goto_3f
    :try_start_40
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_CONTATO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_16

    :goto_40
    :try_start_41
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_CREDITO_IMOBILIARIO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_15

    :goto_41
    :try_start_42
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_VERMELHINHA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_14

    :goto_42
    :try_start_43
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_CAPITALIZACAO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_13

    :goto_43
    :try_start_44
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_WEBVIEW:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_12

    :goto_44
    :try_start_45
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_SALDO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_11

    :goto_45
    :try_start_46
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_EXTRATO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_10

    :goto_46
    :try_start_47
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_LANCAMENTO_FUTURO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_f

    :goto_47
    :try_start_48
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_PROPOSTAS_ABERTO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_e

    :goto_48
    :try_start_49
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_NOTIFICACOES:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_d

    :goto_49
    :try_start_4a
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_HABILITAR_TRANSFERGOLDEN:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_c

    :goto_4a
    :try_start_4b
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_DESABILITAR_TRANSFERGOLDEN:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_b

    :goto_4b
    :try_start_4c
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_CARTEIRA_DIARIA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_a

    :goto_4c
    :try_start_4d
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_MEUS_COMPROMISSOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_9

    :goto_4d
    :try_start_4e
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_AJUSTAR_LIMITES:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_8

    :goto_4e
    :try_start_4f
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_AJUSTAR_LIMITE_DE_CONTA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_7

    :goto_4f
    :try_start_50
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_INVESTIMENTO_PREVIDENCIA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_6

    :goto_50
    :try_start_51
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_INVESTIMENTO_RENDA_FIXA:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_5

    :goto_51
    :try_start_52
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_INVESTIMENTO_FUNDOS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_4

    :goto_52
    :try_start_53
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_RENEGOCIACAO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_3

    :goto_53
    :try_start_54
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->SUBMENU_ITEM_OPERACOES_SEGUROS:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_2

    :goto_54
    :try_start_55
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_GESTAO_DE_CREDITO:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_1

    :goto_55
    :try_start_56
    sget-object v0, Lgrd;->a:[I

    sget-object v1, Ljox;->MENU_ITEM_CONTA_CORRIENTE:Ljox;

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_0

    :goto_56
    return-void

    :catch_0
    move-exception v0

    goto :goto_56

    :catch_1
    move-exception v0

    goto :goto_55

    :catch_2
    move-exception v0

    goto :goto_54

    :catch_3
    move-exception v0

    goto :goto_53

    :catch_4
    move-exception v0

    goto :goto_52

    :catch_5
    move-exception v0

    goto :goto_51

    :catch_6
    move-exception v0

    goto :goto_50

    :catch_7
    move-exception v0

    goto :goto_4f

    :catch_8
    move-exception v0

    goto :goto_4e

    :catch_9
    move-exception v0

    goto :goto_4d

    :catch_a
    move-exception v0

    goto/16 :goto_4c

    :catch_b
    move-exception v0

    goto/16 :goto_4b

    :catch_c
    move-exception v0

    goto/16 :goto_4a

    :catch_d
    move-exception v0

    goto/16 :goto_49

    :catch_e
    move-exception v0

    goto/16 :goto_48

    :catch_f
    move-exception v0

    goto/16 :goto_47

    :catch_10
    move-exception v0

    goto/16 :goto_46

    :catch_11
    move-exception v0

    goto/16 :goto_45

    :catch_12
    move-exception v0

    goto/16 :goto_44

    :catch_13
    move-exception v0

    goto/16 :goto_43

    :catch_14
    move-exception v0

    goto/16 :goto_42

    :catch_15
    move-exception v0

    goto/16 :goto_41

    :catch_16
    move-exception v0

    goto/16 :goto_40

    :catch_17
    move-exception v0

    goto/16 :goto_3f

    :catch_18
    move-exception v0

    goto/16 :goto_3e

    :catch_19
    move-exception v0

    goto/16 :goto_3d

    :catch_1a
    move-exception v0

    goto/16 :goto_3c

    :catch_1b
    move-exception v0

    goto/16 :goto_3b

    :catch_1c
    move-exception v0

    goto/16 :goto_3a

    :catch_1d
    move-exception v0

    goto/16 :goto_39

    :catch_1e
    move-exception v0

    goto/16 :goto_38

    :catch_1f
    move-exception v0

    goto/16 :goto_37

    :catch_20
    move-exception v0

    goto/16 :goto_36

    :catch_21
    move-exception v0

    goto/16 :goto_35

    :catch_22
    move-exception v0

    goto/16 :goto_34

    :catch_23
    move-exception v0

    goto/16 :goto_33

    :catch_24
    move-exception v0

    goto/16 :goto_32

    :catch_25
    move-exception v0

    goto/16 :goto_31

    :catch_26
    move-exception v0

    goto/16 :goto_30

    :catch_27
    move-exception v0

    goto/16 :goto_2f

    :catch_28
    move-exception v0

    goto/16 :goto_2e

    :catch_29
    move-exception v0

    goto/16 :goto_2d

    :catch_2a
    move-exception v0

    goto/16 :goto_2c

    :catch_2b
    move-exception v0

    goto/16 :goto_2b

    :catch_2c
    move-exception v0

    goto/16 :goto_2a

    :catch_2d
    move-exception v0

    goto/16 :goto_29

    :catch_2e
    move-exception v0

    goto/16 :goto_28

    :catch_2f
    move-exception v0

    goto/16 :goto_27

    :catch_30
    move-exception v0

    goto/16 :goto_26

    :catch_31
    move-exception v0

    goto/16 :goto_25

    :catch_32
    move-exception v0

    goto/16 :goto_24

    :catch_33
    move-exception v0

    goto/16 :goto_23

    :catch_34
    move-exception v0

    goto/16 :goto_22

    :catch_35
    move-exception v0

    goto/16 :goto_21

    :catch_36
    move-exception v0

    goto/16 :goto_20

    :catch_37
    move-exception v0

    goto/16 :goto_1f

    :catch_38
    move-exception v0

    goto/16 :goto_1e

    :catch_39
    move-exception v0

    goto/16 :goto_1d

    :catch_3a
    move-exception v0

    goto/16 :goto_1c

    :catch_3b
    move-exception v0

    goto/16 :goto_1b

    :catch_3c
    move-exception v0

    goto/16 :goto_1a

    :catch_3d
    move-exception v0

    goto/16 :goto_19

    :catch_3e
    move-exception v0

    goto/16 :goto_18

    :catch_3f
    move-exception v0

    goto/16 :goto_17

    :catch_40
    move-exception v0

    goto/16 :goto_16

    :catch_41
    move-exception v0

    goto/16 :goto_15

    :catch_42
    move-exception v0

    goto/16 :goto_14

    :catch_43
    move-exception v0

    goto/16 :goto_13

    :catch_44
    move-exception v0

    goto/16 :goto_12

    :catch_45
    move-exception v0

    goto/16 :goto_11

    :catch_46
    move-exception v0

    goto/16 :goto_10

    :catch_47
    move-exception v0

    goto/16 :goto_f

    :catch_48
    move-exception v0

    goto/16 :goto_e

    :catch_49
    move-exception v0

    goto/16 :goto_d

    :catch_4a
    move-exception v0

    goto/16 :goto_c

    :catch_4b
    move-exception v0

    goto/16 :goto_b

    :catch_4c
    move-exception v0

    goto/16 :goto_a

    :catch_4d
    move-exception v0

    goto/16 :goto_9

    :catch_4e
    move-exception v0

    goto/16 :goto_8

    :catch_4f
    move-exception v0

    goto/16 :goto_7

    :catch_50
    move-exception v0

    goto/16 :goto_6

    :catch_51
    move-exception v0

    goto/16 :goto_5

    :catch_52
    move-exception v0

    goto/16 :goto_4

    :catch_53
    move-exception v0

    goto/16 :goto_3

    :catch_54
    move-exception v0

    goto/16 :goto_2

    .line 1803
    :catch_55
    move-exception v0

    goto/16 :goto_1

    :catch_56
    move-exception v0

    goto/16 :goto_0
.end method
