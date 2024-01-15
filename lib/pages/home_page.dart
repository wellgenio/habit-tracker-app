import 'package:flutter/material.dart';
import 'package:habit_tracker/components/drawer_widget.dart';
import 'package:habit_tracker/components/habit_tile_widget.dart';
import 'package:habit_tracker/components/heat_map_widget.dart';
import 'package:habit_tracker/database/habit_database.dart';
import 'package:habit_tracker/models/habit.dart';
import 'package:habit_tracker/utils/habit_utils.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Provider.of<HabitDatabase>(context, listen: false).readHabits();
  }

  void createNewHabit() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: 'Crie um novo hábito',
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              String newHabitName = textController.text;

              context.read<HabitDatabase>().addHabit(newHabitName);

              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Criar'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }

  void checkHabitOnOff(bool? value, Habit habit) {
    if (value != null) {
      context.read<HabitDatabase>().updateHabitCompletion(habit.id, value);
    }
  }

  void editHabit(Habit habit) {
    textController.text = habit.name;

    showDialog(
      context: context,
      builder: (cotenxt) => AlertDialog(
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: 'Escreva um nome para o hábito',
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              String newHabitName = textController.text;

              context.read<HabitDatabase>().updateHabitName(habit.id, newHabitName);
              textController.clear();
              Navigator.pop(context);
            },
            child: const Text('Salvar'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }

  void deleteHabit(Habit habit) {
    showDialog(
      context: context,
      builder: (cotenxt) => AlertDialog(
        content: const Text('Tem certeza de que deseja excluir'),
        actions: [
          MaterialButton(
            onPressed: () {
              context.read<HabitDatabase>().deleteHabit(habit.id);

              Navigator.pop(context);
            },
            child: const Text('Deletar'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewHabit,
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          _buildHeatMap(),
          _buildHabitList(),
        ],
      ),
    );
  }

  Widget _buildHeatMap() {
    final habitDatabase = context.watch<HabitDatabase>();

    List<Habit> currentHabits = habitDatabase.currentHabits;

    return FutureBuilder<DateTime?>(
      future: habitDatabase.getFirstLaunchDate(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HeatMapWidget(
            startDate: snapshot.data!,
            datasets: prepHeatMapDataset(currentHabits),
          );
        }

        return Container();
      },
    );
  }

  Widget _buildHabitList() {
    final habitDatabase = context.watch<HabitDatabase>();

    List<Habit> currentHabits = habitDatabase.currentHabits;

    return ListView.builder(
      itemCount: currentHabits.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final habit = currentHabits[index];

        bool isCompletedToday = isHabitCompletedToday(habit.completedDays);

        return HabitTileWidget(
          isCompleted: isCompletedToday,
          text: habit.name,
          onChanged: (value) => checkHabitOnOff(value, habit),
          editHabit: (context) => editHabit(habit),
          deleteHabit: (context) => deleteHabit(habit),
        );
      },
    );
  }
}
